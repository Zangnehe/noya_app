import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart'; // đường dẫn tới LoginPage
import '../widget/bottom_nav_bar.dart'; // đường dẫn tới BottomNavBar

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        final user = snapshot.data;
        if (user != null) {
          return const BottomNavBar(); // ✅ đã đăng nhập
        } else {
          return const LoginPage(); // ✅ chưa đăng nhập
        }
      },
    );
  }
}
