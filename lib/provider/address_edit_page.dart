import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';

class AddressEditPage extends StatefulWidget {
  const AddressEditPage({super.key});

  @override
  State<AddressEditPage> createState() => _AddressEditPageState();
}

class _AddressEditPageState extends State<AddressEditPage> {
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController addressController;
  UserAddress? addr;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (addr == null) {
      addr = ModalRoute.of(context)?.settings.arguments as UserAddress?;
      nameController = TextEditingController(text: addr?.receiverName ?? '');
      phoneController = TextEditingController(text: addr?.phone ?? '');
      addressController = TextEditingController(text: addr?.fullAddress ?? '');
    }
  }

  void saveAddress(UserAddress oldAddr) {
    final phone = phoneController.text.trim();

    if (nameController.text.isEmpty ||
        phone.isEmpty ||
        addressController.text.isEmpty) {
      _showSnack('⚠️ Vui lòng nhập đầy đủ thông tin', Colors.orange);
      return;
    }

    final phoneRegex = RegExp(r'^0\d{9}$');
    if (!phoneRegex.hasMatch(phone)) {
      _showSnack('📵 Số điện thoại không hợp lệ', Colors.red);
      return;
    }

    final cart = Provider.of<CartProvider>(context, listen: false);
    final newAddr = UserAddress(
      id: oldAddr.id,
      receiverName: nameController.text.trim(),
      phone: phone,
      fullAddress: addressController.text.trim(),
      lat: oldAddr.lat,
      lng: oldAddr.lng,
    );

    cart.updateAddress(oldAddr.id, newAddr);
    Navigator.pop(context);
    _showSnack('✅ Đã lưu thay đổi địa chỉ', Colors.green);
  }

  void deleteAddress(UserAddress oldAddr) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    cart.deleteAddress(oldAddr.id);
    Navigator.pop(context);
    _showSnack('🗑️ Đã xóa địa chỉ', Colors.red);
  }

  void _showSnack(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (addr == null) {
      return const Scaffold(
        body: Center(child: Text('Không tìm thấy địa chỉ để sửa')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('✏️ Sửa địa chỉ'),
        backgroundColor: const Color(0xFFBFAF9B),
        elevation: 4,
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Tên người nhận',
                    prefixIcon: const Icon(Icons.person, color: Colors.brown),
                    filled: true,
                    fillColor: Colors.brown.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Số điện thoại',
                    prefixIcon: const Icon(Icons.phone, color: Colors.brown),
                    filled: true,
                    fillColor: Colors.brown.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(
                    labelText: 'Địa chỉ đầy đủ',
                    prefixIcon: const Icon(Icons.home, color: Colors.brown),
                    filled: true,
                    fillColor: Colors.brown.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () => saveAddress(addr!),
                      icon: const Icon(Icons.save),
                      label: const Text('Lưu thay đổi'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade600,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () => deleteAddress(addr!),
                      icon: const Icon(Icons.delete),
                      label: const Text('Xóa'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade600,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
