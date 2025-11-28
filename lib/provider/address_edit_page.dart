// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';

// import '../provider/cart_provider.dart';
// import '../models/user_address.dart';

// class AddressEditPage extends StatefulWidget {
//   const AddressEditPage({super.key});

//   @override
//   State<AddressEditPage> createState() => _AddressEditPageState();
// }

// class _AddressEditPageState extends State<AddressEditPage> {
//   late TextEditingController nameController;
//   late TextEditingController phoneController;
//   late TextEditingController addressController;
//   UserAddress? addr;

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     if (addr == null) {
//       addr = ModalRoute.of(context)?.settings.arguments as UserAddress?;
//       nameController = TextEditingController(text: addr?.receiverName ?? '');
//       phoneController = TextEditingController(text: addr?.phone ?? '');
//       addressController = TextEditingController(text: addr?.fullAddress ?? '');
//     }
//   }

//   /// ✅ Hàm gọi API Nominatim để lấy lat/lng từ địa chỉ
//   Future<Map<String, double>?> fetchCoordinates(String fullAddress) async {
//     final url =
//         'https://nominatim.openstreetmap.org/search?q=$fullAddress&format=json&limit=1';
//     final response = await http.get(
//       Uri.parse(url),
//       headers: {
//         'User-Agent': 'FlutterApp', // Nominatim yêu cầu có User-Agent
//       },
//     );
//     if (response.statusCode == 200) {
//       final List data = jsonDecode(response.body);
//       if (data.isNotEmpty) {
//         final lat = double.tryParse(data[0]['lat']);
//         final lon = double.tryParse(data[0]['lon']);
//         if (lat != null && lon != null) {
//           return {'lat': lat, 'lng': lon};
//         }
//       }
//     }
//     return null;
//   }

//   Future<void> saveAddress(UserAddress oldAddr) async {
//     final phone = phoneController.text.trim();
//     final fullAddress = addressController.text.trim();

//     if (nameController.text.isEmpty || phone.isEmpty || fullAddress.isEmpty) {
//       _showSnack('⚠️ Vui lòng nhập đầy đủ thông tin', Colors.orange);
//       return;
//     }

//     final phoneRegex = RegExp(r'^0\d{9}$');
//     if (!phoneRegex.hasMatch(phone)) {
//       _showSnack('📵 Số điện thoại không hợp lệ', Colors.red);
//       return;
//     }

//     // ✅ gọi geocoding để lấy tọa độ mới
//     final coords = await fetchCoordinates(fullAddress);

//     final cart = Provider.of<CartProvider>(context, listen: false);
//     final newAddr = UserAddress(
//       id: oldAddr.id,
//       receiverName: nameController.text.trim(),
//       phone: phone,
//       fullAddress: fullAddress,
//       lat: coords?['lat'] ?? oldAddr.lat,
//       lng: coords?['lng'] ?? oldAddr.lng,
//     );

//     cart.updateAddress(oldAddr.id, newAddr);
//     Navigator.pop(context);
//     _showSnack('✅ Đã lưu thay đổi địa chỉ', Colors.green);
//   }

//   void deleteAddress(UserAddress oldAddr) {
//     final cart = Provider.of<CartProvider>(context, listen: false);
//     cart.deleteAddress(oldAddr.id);
//     Navigator.pop(context);
//     _showSnack('🗑️ Đã xóa địa chỉ', Colors.red);
//   }

//   void _showSnack(String message, Color color) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         backgroundColor: color,
//         behavior: SnackBarBehavior.floating,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         duration: const Duration(seconds: 2),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (addr == null) {
//       return const Scaffold(
//         body: Center(child: Text('Không tìm thấy địa chỉ để sửa')),
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('✏️ Sửa địa chỉ'),
//         backgroundColor: const Color(0xFFBFAF9B),
//         elevation: 4,
//       ),
//       body: AnimatedContainer(
//         duration: const Duration(milliseconds: 400),
//         curve: Curves.easeInOut,
//         padding: const EdgeInsets.all(20),
//         child: Card(
//           elevation: 6,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     labelText: 'Tên người nhận',
//                     prefixIcon: const Icon(Icons.person, color: Colors.brown),
//                     filled: true,
//                     fillColor: Colors.brown.shade50,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 TextFormField(
//                   controller: phoneController,
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     labelText: 'Số điện thoại',
//                     prefixIcon: const Icon(Icons.phone, color: Colors.brown),
//                     filled: true,
//                     fillColor: Colors.brown.shade50,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 TextFormField(
//                   controller: addressController,
//                   decoration: InputDecoration(
//                     labelText: 'Địa chỉ đầy đủ',
//                     prefixIcon: const Icon(Icons.home, color: Colors.brown),
//                     filled: true,
//                     fillColor: Colors.brown.shade50,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   maxLines: 2,
//                 ),
//                 const SizedBox(height: 24),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton.icon(
//                       onPressed: () => saveAddress(addr!),
//                       icon: const Icon(Icons.save),
//                       label: const Text('Lưu thay đổi'),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green.shade600,
//                         foregroundColor: Colors.white,
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 24,
//                           vertical: 12,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         elevation: 3,
//                       ),
//                     ),
//                     ElevatedButton.icon(
//                       onPressed: () => deleteAddress(addr!),
//                       icon: const Icon(Icons.delete),
//                       label: const Text('Xóa'),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.red.shade600,
//                         foregroundColor: Colors.white,
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 24,
//                           vertical: 12,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         elevation: 3,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';
import '../models/user_address.dart';

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

  /// ✅ Hàm gọi API Nominatim để lấy lat/lng từ địa chỉ
  Future<Map<String, double>?> fetchCoordinates(String fullAddress) async {
    final url =
        'https://nominatim.openstreetmap.org/search?q=$fullAddress&format=json&limit=1';
    final response = await http.get(Uri.parse(url), headers: {
      'User-Agent': 'FlutterApp' // Nominatim yêu cầu có User-Agent
    });
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        final lat = double.tryParse(data[0]['lat']);
        final lon = double.tryParse(data[0]['lon']);
        if (lat != null && lon != null) {
          return {'lat': lat, 'lng': lon};
        }
      }
    }
    return null;
  }

  Future<void> saveAddress(UserAddress oldAddr) async {
    final phone = phoneController.text.trim();
    final fullAddress = addressController.text.trim();

    if (nameController.text.isEmpty ||
        phone.isEmpty ||
        fullAddress.isEmpty) {
      _showSnack('⚠️ Vui lòng nhập đầy đủ thông tin', Colors.orange);
      return;
    }

    final phoneRegex = RegExp(r'^0\d{9}$');
    if (!phoneRegex.hasMatch(phone)) {
      _showSnack('📵 Số điện thoại không hợp lệ', Colors.red);
      return;
    }

    // ✅ gọi geocoding để lấy tọa độ mới
    final coords = await fetchCoordinates(fullAddress);

    final cart = Provider.of<CartProvider>(context, listen: false);
    final newAddr = UserAddress(
      id: oldAddr.id,
      receiverName: nameController.text.trim(),
      phone: phone,
      fullAddress: fullAddress,
      lat: coords?['lat'] ?? oldAddr.lat,
      lng: coords?['lng'] ?? oldAddr.lng,
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
