import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final otpController = TextEditingController();

  bool showPassword = false;
  bool isLoading = false;
  bool success = false;

  // Hàm kiểm tra tên hợp lệ (chỉ chữ và số)
  bool isValidName(String name) {
    final regex = RegExp(r'^[a-zA-Z0-9 ]+$');
    return regex.hasMatch(name);
  }

  // Hàm kiểm tra email hợp lệ
  bool isValidEmail(String email) {
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

  // ✅ Hàm đồng bộ user về Laravel
  Future<void> syncUserToLaravel(String uid, String email, String name) async {
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/api/sync-user'), // đổi thành domain server khi deploy
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'uid': uid,
          'email': email,
          'name': name,
        }),
      );

      if (response.statusCode == 200) {
        print('✅ User đã được đồng bộ về Laravel');
      } else {
        print('❌ Lỗi đồng bộ: ${response.body}');
      }
    } catch (e) {
      print('❌ Lỗi kết nối Laravel: $e');
    }
  }

  Future<void> register() async {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('❌ Vui lòng nhập đầy đủ thông tin')),
      );
      return;
    }

    if (!isValidName(name)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('❌ Tên không hợp lệ (không chứa ký tự đặc biệt)'),
        ),
      );
      return;
    }

    if (!isValidEmail(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('❌ Email không hợp lệ')),
      );
      return;
    }

    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('❌ Mật khẩu phải ít nhất 6 ký tự')),
      );
      return;
    }

    setState(() => isLoading = true);
    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // Gửi email xác thực
      await userCredential.user?.sendEmailVerification();

      // ✅ Đồng bộ về Laravel
      await syncUserToLaravel(
        userCredential.user!.uid,
        email,
        name,
      );

      setState(() {
        success = true; // hiển thị thông báo thành công
      });
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('❌ Lỗi: ${e.message}')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> verifyOtp() async {
    try {
      final oobCode = otpController.text.trim();
      await FirebaseAuth.instance.applyActionCode(oobCode);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('✅ Email đã được xác thực thành công')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('❌ Lỗi xác thực: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const themeColor = Colors.brown;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/background.jpg', fit: BoxFit.cover),
          ),
          Container(color: Colors.white.withOpacity(0.7)),
          success
              ? _buildSuccessUI(themeColor)
              : _buildRegisterForm(themeColor),
        ],
      ),
    );
  }

  Widget _buildSuccessUI(Color themeColor) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 80),
          const SizedBox(height: 20),
          const Text(
            '🎉 Bạn đã đăng ký thành công!\n\n'
            'Một email xác thực đã được gửi tới Gmail của bạn.\n'
            '👉 Hãy mở Gmail, tìm email từ Firebase.\n'
            '👉 Copy đoạn mã sau `oobCode=` trong link xác thực.\n'
            '👉 Dán mã OTP đó vào ô bên dưới để xác nhận email thật.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: otpController,
            decoration: InputDecoration(
              labelText: 'Nhập mã OTP (oobCode) từ Gmail',
              prefixIcon: const Icon(Icons.lock, color: Colors.brown),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: verifyOtp,
            style: ElevatedButton.styleFrom(
              backgroundColor: themeColor,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Xác nhận OTP', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              try {
                await FirebaseAuth.instance.currentUser?.sendEmailVerification();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('✅ Email xác thực đã được gửi lại')),
                );
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('❌ Lỗi gửi lại email: $e')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Gửi lại email xác thực', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
            style: ElevatedButton.styleFrom(
              backgroundColor: themeColor,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Quay lại đăng nhập', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterForm(Color themeColor) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset('assets/logo.jpg', height: 100),
          ),
          const SizedBox(height: 20),
          const Text(
            'Chào mừng bạn đến với Noya',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 30),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Đăng ký',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildTextField(nameController, 'Tên người dùng', Icons.person),
          const SizedBox(height: 16),
          _buildTextField(emailController, 'Email', Icons.email,
              keyboard: TextInputType.emailAddress),
          const SizedBox(height: 16),
          _buildPasswordField(),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isLoading ? null : register,
                            style: ElevatedButton.styleFrom(
                backgroundColor: themeColor,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: isLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text('Đăng ký', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Đã có tài khoản? Đăng nhập',
              style: TextStyle(color: Colors.brown),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label,
    IconData icon, {
    TextInputType keyboard = TextInputType.text,
  }) {
    const themeColor = Colors.brown;
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: themeColor),
        prefixIcon: Icon(icon, color: themeColor),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      keyboardType: keyboard,
    );
  }

  Widget _buildPasswordField() {
    const themeColor = Colors.brown;
    return TextField(
      controller: passwordController,
      decoration: InputDecoration(
        labelText: 'Mật khẩu',
        labelStyle: const TextStyle(color: themeColor),
        prefixIcon: const Icon(Icons.lock, color: themeColor),
        suffixIcon: IconButton(
          icon: Icon(
            showPassword ? Icons.visibility_off : Icons.visibility,
            color: themeColor,
          ),
          onPressed: () => setState(() => showPassword = !showPassword),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      obscureText: !showPassword,
    );
  }
}
