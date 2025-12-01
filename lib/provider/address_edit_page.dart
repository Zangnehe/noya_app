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
//   late TextEditingController streetController; // số nhà, tên đường
//   UserAddress? addr;

//   List provinces = [];
//   List districts = [];
//   List wards = [];

//   String? selectedProvinceName;
//   String? selectedDistrictName;
//   String? selectedWardName;

//   @override
//   void initState() {
//     super.initState();
//     fetchProvinces();
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     if (addr == null) {
//       addr = ModalRoute.of(context)?.settings.arguments as UserAddress?;
//       nameController = TextEditingController(text: addr?.receiverName ?? '');
//       phoneController = TextEditingController(text: addr?.phone ?? '');

//       if (addr?.fullAddress != null) {
//         final parts = addr!.fullAddress.split(',');
//         // phần đầu tiên là số nhà, tên đường
//         final streetOnly = parts.isNotEmpty ? parts.first.trim() : '';
//         streetController = TextEditingController(text: streetOnly);

//         // gán dropdown nếu có đủ dữ liệu
//         if (parts.length >= 4) {
//           selectedWardName = parts[1].trim();
//           selectedDistrictName = parts[2].trim();
//           selectedProvinceName = parts[3].trim();
//         }
//       } else {
//         streetController = TextEditingController();
//       }
//     }
//   }

//   Future<void> fetchProvinces() async {
//     final response = await http.get(
//       Uri.parse('https://provinces.open-api.vn/api/p/'),
//     );
//     if (response.statusCode == 200) {
//       setState(() {
//         provinces = jsonDecode(response.body);
//       });
//     }
//   }

//   Future<void> fetchDistricts(String provinceCode, String provinceName) async {
//     final response = await http.get(
//       Uri.parse('https://provinces.open-api.vn/api/p/$provinceCode?depth=2'),
//     );
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       setState(() {
//         districts = data['districts'];
//         wards = [];
//         selectedProvinceName = provinceName;
//         selectedDistrictName = null;
//         selectedWardName = null;
//       });
//     }
//   }

//   Future<void> fetchWards(String districtCode, String districtName) async {
//     final response = await http.get(
//       Uri.parse('https://provinces.open-api.vn/api/d/$districtCode?depth=2'),
//     );
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       setState(() {
//         wards = data['wards'];
//         selectedDistrictName = districtName;
//         selectedWardName = null;
//       });
//     }
//   }

//   Future<Map<String, double>?> fetchCoordinates(String fullAddress) async {
//     final url =
//         'https://nominatim.openstreetmap.org/search?q=$fullAddress&format=json&limit=1';
//     final response = await http.get(
//       Uri.parse(url),
//       headers: {'User-Agent': 'FlutterApp'},
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
//     final street = streetController.text.trim();

//     if (nameController.text.isEmpty ||
//         phone.isEmpty ||
//         street.isEmpty ||
//         selectedProvinceName == null ||
//         selectedDistrictName == null ||
//         selectedWardName == null) {
//       _showSnack('⚠️ Vui lòng nhập đầy đủ thông tin', Colors.orange);
//       return;
//     }

//     final phoneRegex = RegExp(r'^0\d{9}$');
//     if (!phoneRegex.hasMatch(phone)) {
//       _showSnack('📵 Số điện thoại không hợp lệ', Colors.red);
//       return;
//     }

//     // ✅ Ghép lại địa chỉ đầy đủ
//     final fullAddress =
//         '$street, $selectedWardName, $selectedDistrictName, $selectedProvinceName';

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

//     // ✅ SnackBar đồng bộ màu thương hiệu
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('✅ Đã lưu thay đổi địa chỉ'),
//         backgroundColor: Color(0xFFBFAF9B),
//         behavior: SnackBarBehavior.floating,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//         duration: Duration(seconds: 2),
//       ),
//     );
//   }

//   void deleteAddress(UserAddress oldAddr) {
//     final cart = Provider.of<CartProvider>(context, listen: false);
//     cart.deleteAddress(oldAddr.id);
//     Navigator.pop(context);

//     // ✅ SnackBar màu đỏ cho hành động xóa
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: const Text('🗑️ Đã xóa địa chỉ'),
//         backgroundColor: Colors.red.shade600,
//         behavior: SnackBarBehavior.floating,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         duration: const Duration(seconds: 2),
//       ),
//     );
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
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             // Người nhận
//             TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: 'Tên người nhận',
//                 prefixIcon: const Icon(Icons.person, color: Color(0xFFBFAF9B)),
//                 filled: true,
//                 fillColor: const Color(0xFFFAF7F2),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                   ), // viền khi chưa focus
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                     width: 2,
//                   ), // viền khi focus
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Số điện thoại
//             TextFormField(
//               controller: phoneController,
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 labelText: 'Số điện thoại',
//                 prefixIcon: const Icon(Icons.phone, color: Color(0xFFBFAF9B)),
//                 filled: true,
//                 fillColor: const Color(0xFFFAF7F2),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                   ), // viền khi chưa focus
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                     width: 2,
//                   ), // viền khi focus
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Dropdown Tỉnh/Thành phố
//             DropdownButtonFormField(
//               value: selectedProvinceName,
//               items: provinces.map<DropdownMenuItem<String>>((p) {
//                 return DropdownMenuItem(
//                   value: p['name'],
//                   child: Text(p['name']),
//                 );
//               }).toList(),
//               onChanged: (val) {
//                 final province = provinces.firstWhere((p) => p['name'] == val);
//                 fetchDistricts(province['code'].toString(), province['name']);
//               },
//               decoration: InputDecoration(
//                 labelText: 'Tỉnh/Thành phố',
//                 prefixIcon: const Icon(
//                   Icons.location_city,
//                   color: Color(0xFFBFAF9B),
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                   ), // viền khi chưa focus
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                     width: 2,
//                   ), // viền khi focus
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Dropdown Quận/Huyện
//             DropdownButtonFormField(
//               value: selectedDistrictName,
//               items: districts.map<DropdownMenuItem<String>>((d) {
//                 return DropdownMenuItem(
//                   value: d['name'],
//                   child: Text(d['name']),
//                 );
//               }).toList(),
//               onChanged: (val) {
//                 final district = districts.firstWhere((d) => d['name'] == val);
//                 fetchWards(district['code'].toString(), district['name']);
//               },
//               decoration: InputDecoration(
//                 labelText: 'Quận/Huyện',
//                 prefixIcon: const Icon(
//                   Icons.apartment,
//                   color: Color(0xFFBFAF9B),
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                   ), // viền khi chưa focus
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                     width: 2,
//                   ), // viền khi focus
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Dropdown Phường/Xã
//             DropdownButtonFormField(
//               value: selectedWardName,
//               items: wards.map<DropdownMenuItem<String>>((w) {
//                 return DropdownMenuItem(
//                   value: w['name'],
//                   child: Text(w['name']),
//                 );
//               }).toList(),
//               onChanged: (val) {
//                 setState(() => selectedWardName = val);
//               },
//               decoration: InputDecoration(
//                 labelText: 'Phường/Xã',
//                 prefixIcon: const Icon(Icons.map, color: Color(0xFFBFAF9B)),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                   ), // viền khi chưa focus
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                     width: 2,
//                   ), // viền khi focus
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Số nhà, tên đường
//             TextFormField(
//               controller: streetController,
//               decoration: InputDecoration(
//                 labelText: 'Số nhà, tên đường',
//                 prefixIcon: const Icon(Icons.home, color: Color(0xFFBFAF9B)),
//                 filled: true,
//                 fillColor: const Color(0xFFFAF7F2),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                   ), // viền khi chưa focus
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                     width: 2,
//                   ), // viền khi focus
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Nút hành động
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: () => saveAddress(addr!),
//                   icon: const Icon(Icons.save),
//                   label: const Text('Lưu thay đổi'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFBFAF9B),
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 24,
//                       vertical: 12,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () => deleteAddress(addr!),
//                   icon: const Icon(Icons.delete),
//                   label: const Text('Xóa'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red.shade600,
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 24,
//                       vertical: 12,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
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
import 'package:diacritic/diacritic.dart';

class AddressEditPage extends StatefulWidget {
  const AddressEditPage({super.key});

  static const Color themeColor = Color(0xFFBFAF9B);

  @override
  State<AddressEditPage> createState() => _AddressEditPageState();
}

class _AddressEditPageState extends State<AddressEditPage> {
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController streetController;
  UserAddress? addr;

  List provinces = [];
  List districts = [];
  List wards = [];

  String? selectedProvinceName;
  String? selectedDistrictName;
  String? selectedWardName;

  bool phoneError = false;

  @override
  void initState() {
    super.initState();
    fetchProvinces();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (addr == null) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args is UserAddress) {
        addr = args;
        nameController = TextEditingController(text: addr?.receiverName ?? '');
        phoneController = TextEditingController(text: addr?.phone ?? '');
        streetController = TextEditingController();

        if (addr?.fullAddress != null) {
          final parts = addr!.fullAddress.split(',');
          if (parts.isNotEmpty) streetController.text = parts.first.trim();
          if (parts.length >= 4) {
            selectedWardName = parts[1].trim();
            selectedDistrictName = parts[2].trim();
            selectedProvinceName = parts[3].trim();
          }
        }
      }
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    streetController.dispose();
    super.dispose();
  }

  Future<void> fetchProvinces() async {
    try {
      final response = await http.get(
        Uri.parse('https://provinces.open-api.vn/api/?depth=1'),
      );
      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        setState(() {
          provinces = data;
          // mặc định chọn TP.HCM
          final hcm = provinces.firstWhere((p) => p['code'].toString() == "79");
          selectedProvinceName = hcm['name'];
        });
        // load quận/huyện của TP.HCM luôn
        await fetchDistricts("79", "Thành phố Hồ Chí Minh");
      }
    } catch (e) {
      debugPrint("❌ Lỗi khi tải tỉnh/thành phố: $e");
    }
  }

  Future<void> fetchDistricts(String provinceCode, String provinceName) async {
    final response = await http.get(
      Uri.parse('https://provinces.open-api.vn/api/p/$provinceCode?depth=2'),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        districts = data['districts'];
        wards = [];
        selectedProvinceName = provinceName;
        selectedDistrictName = null;
        selectedWardName = null;
      });
    } else {
      _showSnack('⚠️ Không tải được danh sách quận/huyện', Colors.orange);
    }
  }

  Future<void> fetchWards(String districtCode, String districtName) async {
    final response = await http.get(
      Uri.parse('https://provinces.open-api.vn/api/d/$districtCode?depth=2'),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        wards = data['wards'];
        selectedDistrictName = districtName;
        selectedWardName = null;
      });
    } else {
      _showSnack('⚠️ Không tải được danh sách phường/xã', Colors.orange);
    }
  }

  Future<void> saveAddress(UserAddress oldAddr) async {
    final phone = phoneController.text.trim();
    final street = streetController.text.trim();

    if (nameController.text.isEmpty ||
        phone.isEmpty ||
        street.isEmpty ||
        selectedDistrictName == null ||
        selectedWardName == null ||
        selectedProvinceName == null) {
      _showSnack('⚠️ Vui lòng nhập đầy đủ thông tin', Colors.orange);
      return;
    }

    final phoneRegex = RegExp(r'^0\d{9}$');
    if (!phoneRegex.hasMatch(phone)) {
      setState(() => phoneError = true);
      _showSnack('📵 Số điện thoại không hợp lệ', Colors.red);
      return;
    } else {
      setState(() => phoneError = false);
    }

    final fullAddress =
        '$street, $selectedWardName, $selectedDistrictName, $selectedProvinceName';

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

    _showSnack('✅ Đã lưu thay đổi địa chỉ', AddressEditPage.themeColor);
    Navigator.pop(context);
  }

  void deleteAddress(UserAddress oldAddr) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    cart.deleteAddress(oldAddr.id);
    Navigator.pop(context);
    _showSnack('🗑️ Đã xóa địa chỉ', Colors.red.shade600);
  }

  Future<Map<String, double>?> fetchCoordinates(String fullAddress) async {
    final encoded = Uri.encodeComponent(fullAddress);
    final url =
        'https://nominatim.openstreetmap.org/search?q=$encoded&format=json&limit=1';

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {'User-Agent': 'MyFlutterApp/1.0 (voanhkiet0217@gmail.com)'},
      );
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
    } catch (e) {
      debugPrint("❌ Lỗi khi gọi API Nominatim: $e");
    }
    return null;
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

  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: AddressEditPage.themeColor),
      filled: true,
      fillColor: AddressEditPage.themeColor.withOpacity(0.1),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
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
        backgroundColor: AddressEditPage.themeColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: _inputDecoration('Tên người nhận', Icons.person),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: _inputDecoration('Số điện thoại', Icons.phone)
                  .copyWith(
                    errorText: phoneError ? 'Số điện thoại không hợp lệ' : null,
                  ),
            ),
            const SizedBox(height: 16),

            // Tỉnh/Thành phố
            DropdownButtonFormField<String>(
              value: selectedProvinceName,
              decoration: _inputDecoration(
                'Tỉnh/Thành phố',
                Icons.location_city,
              ),
              items: provinces.map<DropdownMenuItem<String>>((p) {
                return DropdownMenuItem(
                  value: p['name'],
                  child: Text(p['name']),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  selectedProvinceName = val;
                  final province = provinces.firstWhere(
                    (p) => p['name'] == val,
                  );
                  fetchDistricts(province['code'].toString(), province['name']);
                });
              },
            ),

            const SizedBox(height: 16),

            // Quận/Huyện
            DropdownButtonFormField<String>(
              value: districts.any((d) => d['name'] == selectedDistrictName)
                  ? selectedDistrictName
                  : null,
              decoration: _inputDecoration('Quận/Huyện', Icons.apartment),
              items: districts.map<DropdownMenuItem<String>>((d) {
                return DropdownMenuItem(
                  value: d['name'],
                  child: Text(d['name']),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  selectedDistrictName = val;
                  final district = districts.firstWhere(
                    (d) => d['name'] == val,
                  );
                  fetchWards(district['code'].toString(), district['name']);
                });
              },
            ),

            const SizedBox(height: 16),

            // Phường/Xã
            DropdownButtonFormField<String>(
              value: wards.any((w) => w['name'] == selectedWardName)
                  ? selectedWardName
                  : null,
              decoration: _inputDecoration('Phường/Xã', Icons.map),
              items: wards.map<DropdownMenuItem<String>>((w) {
                return DropdownMenuItem(
                  value: w['name'],
                  child: Text(w['name']),
                );
              }).toList(),
              onChanged: (val) => setState(() => selectedWardName = val),
            ),

            const SizedBox(height: 16),
            TextFormField(
              controller: streetController,
              decoration: _inputDecoration('Số nhà, tên đường', Icons.home),
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
                    backgroundColor: AddressEditPage.themeColor,
                    foregroundColor: Colors.white,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => deleteAddress(addr!),
                  icon: const Icon(Icons.delete),
                  label: const Text('Xóa'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade600,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
