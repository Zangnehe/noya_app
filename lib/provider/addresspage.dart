import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'cart_provider.dart';
import '../models/user_address.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  static const Color themeColor = Color(0xFFBFAF9B);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage>
    with SingleTickerProviderStateMixin {
  List provinces = [];
  List districts = [];
  List wards = [];

  String? selectedProvinceName;
  String? selectedDistrictName;
  String? selectedWardName;

  final TextEditingController streetController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  late AnimationController _controller;
  late Animation<double> _fade;

  bool phoneError = false;

  @override
  void initState() {
    super.initState();
    fetchProvinces();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    streetController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  Future<void> fetchProvinces() async {
    // Hardcode TP.HCM
    setState(() {
      provinces = [
        {"code": "79", "name": "Thành phố Hồ Chí Minh"},
      ];
      selectedProvinceName = "Thành phố Hồ Chí Minh";
    });
    await fetchDistricts("79", "Thành phố Hồ Chí Minh");
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
    }
  }

  Future<Map<String, double>?> fetchCoordinates(String fullAddress) async {
    // Encode địa chỉ để tránh lỗi ký tự đặc biệt, dấu tiếng Việt
    final encodedAddress = Uri.encodeComponent(fullAddress);
    final url =
        'https://nominatim.openstreetmap.org/search?q=$encodedAddress&format=json&limit=1';

    try {
      final response = await http
          .get(
            Uri.parse(url),
            headers: {
              // ✅ Nominatim yêu cầu User-Agent hợp lệ (tên app + email liên hệ)
              'User-Agent': 'MyFlutterApp/1.0 (contact@example.com)',
            },
          )
          .timeout(const Duration(seconds: 10)); // tránh treo request

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        if (data.isNotEmpty) {
          final lat = double.tryParse(data[0]['lat']);
          final lon = double.tryParse(data[0]['lon']);
          if (lat != null && lon != null) {
            return {'lat': lat, 'lng': lon};
          }
        } else {
          debugPrint("❌ API không trả về kết quả cho: $fullAddress");
        }
      } else {
        debugPrint("❌ Lỗi HTTP ${response.statusCode} khi gọi API Nominatim");
      }
    } catch (e) {
      debugPrint("❌ Lỗi khi gọi API Nominatim: $e");
    }

    // ✅ Fallback: trả về null nếu không tìm thấy
    debugPrint("❌ Không tìm thấy tọa độ cho địa chỉ: $fullAddress");
    return null;
  }

  Future<void> submitAddress() async {
    final phone = phoneController.text.trim();

    if (selectedProvinceName == null ||
        selectedDistrictName == null ||
        selectedWardName == null ||
        streetController.text.isEmpty ||
        nameController.text.isEmpty ||
        phone.isEmpty) {
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
        '${streetController.text}, $selectedWardName, $selectedDistrictName, $selectedProvinceName';

    final coords = await fetchCoordinates(fullAddress);

    final cart = Provider.of<CartProvider>(context, listen: false);
    cart.addAddress(
      UserAddress(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        receiverName: nameController.text.trim(),
        phone: phone,
        fullAddress: fullAddress,
        lat: coords?['lat'],
        lng: coords?['lng'],
      ),
    );

    Navigator.pushNamed(context, '/payment');
    _showSnack('✅ Đã thêm địa chỉ mới', Colors.green);
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
      prefixIcon: Icon(icon, color: AddressPage.themeColor),
      filled: true,
      fillColor: AddressPage.themeColor.withOpacity(0.1),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('📍 Quản lý địa chỉ'),
        backgroundColor: AddressPage.themeColor,
        elevation: 4,
      ),
      body: FadeTransition(
        opacity: _fade,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              if (cart.addresses.isNotEmpty)
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '📌 Địa chỉ đã lưu',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AddressPage.themeColor,
                          ),
                        ),
                        const Divider(),
                        ...cart.addresses.map((addr) {
                          final isSelected =
                              cart.selectedAddress?.id == addr.id;
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              leading: Icon(
                                isSelected
                                    ? Icons.check_circle
                                    : Icons.location_on,
                                color: isSelected
                                    ? AddressPage.themeColor
                                    : Colors.grey,
                              ),
                              title: Text(
                                '${addr.receiverName} - ${addr.phone}',
                              ),
                              subtitle: Text(addr.fullAddress),
                              trailing: PopupMenuButton<String>(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                onSelected: (value) {
                                  if (value == 'edit') {
                                    Navigator.pushNamed(
                                      context,
                                      '/address-edit',
                                      arguments: addr,
                                    );
                                  } else if (value == 'delete') {
                                    cart.deleteAddress(addr.id);
                                    _showSnack(
                                      '🗑️ Đã xóa địa chỉ',
                                      Colors.red,
                                    );
                                  }
                                },
                                itemBuilder: (context) => [
                                  const PopupMenuItem(
                                    value: 'edit',
                                    child: Text('✏️ Sửa'),
                                  ),
                                  const PopupMenuItem(
                                    value: 'delete',
                                    child: Text('🗑️ Xóa'),
                                  ),
                                ],
                              ),
                              onTap: () {
                                cart.selectAddress(addr.id);
                                Navigator.pushNamed(context, '/payment');
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),

              const SizedBox(height: 20),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '➕ Thêm địa chỉ mới',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AddressPage.themeColor,
                        ),
                      ),
                      const Divider(),
                      TextFormField(
                        controller: nameController,
                        decoration: _inputDecoration(
                          'Tên người nhận',
                          Icons.person,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration:
                            _inputDecoration(
                              'Số điện thoại',
                              Icons.phone,
                            ).copyWith(
                              errorText: phoneError
                                  ? 'Số điện thoại không hợp lệ'
                                  : null,
                            ),
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField(
                        value: selectedProvinceName,
                        items: provinces.map((p) {
                          return DropdownMenuItem(
                            value: p['name'],
                            child: Text(p['name']),
                          );
                        }).toList(),
                        onChanged: (_) {},
                        decoration: _inputDecoration(
                          'Tỉnh/Thành phố',
                          Icons.location_city,
                        ),
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: selectedDistrictName,
                        decoration: _inputDecoration('Quận/Huyện', Icons.map),
                        items: districts.map<DropdownMenuItem<String>>((d) {
                          return DropdownMenuItem<String>(
                            value: d['name'],
                            child: Text(d['name']),
                            onTap: () =>
                                fetchWards(d['code'].toString(), d['name']),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() => selectedDistrictName = value);
                        },
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: selectedWardName,
                        decoration: _inputDecoration(
                          'Xã/Phường',
                          Icons.location_on,
                        ),
                        items: wards.map<DropdownMenuItem<String>>((w) {
                          return DropdownMenuItem<String>(
                            value: w['name'],
                            child: Text(w['name']),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() => selectedWardName = value);
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: streetController,
                        decoration: _inputDecoration(
                          'Số nhà, tên đường',
                          Icons.home,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: submitAddress,
                          icon: const Icon(Icons.check_circle),
                          label: const Text('Lưu địa chỉ'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AddressPage.themeColor,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 14,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';

// import 'cart_provider.dart';
// import '../models/user_address.dart';

// class AddressPage extends StatefulWidget {
//   const AddressPage({super.key});

//   static const Color themeColor = Color(0xFFBFAF9B);

//   @override
//   State<AddressPage> createState() => _AddressPageState();
// }

// class _AddressPageState extends State<AddressPage>
//     with SingleTickerProviderStateMixin {
//   List districts = [];
//   List wards = [];

//   String selectedProvinceName = "Thành phố Hồ Chí Minh"; // cố định TP.HCM
//   String? selectedDistrictName;
//   String? selectedWardName;

//   final streetController = TextEditingController();
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();

//   late AnimationController _controller;
//   late Animation<double> _fade;

//   bool phoneError = false;

//   @override
//   void initState() {
//     super.initState();
//     fetchDistricts();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );
//     _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     streetController.dispose();
//     nameController.dispose();
//     phoneController.dispose();
//     super.dispose();
//   }

//   /// Lấy danh sách quận/huyện của TP.HCM
//   Future<void> fetchDistricts() async {
//     try {
//       final response = await http.get(
//         Uri.parse('https://provinces.open-api.vn/api/v1/?depth=2'),
//       );
//       if (response.statusCode == 200) {
//         final List data = jsonDecode(response.body);
//         final hcm = data.firstWhere((p) => p['code'] == 79);
//         setState(() {
//           districts = hcm['districts'];
//           wards = [];
//           selectedDistrictName = null;
//           selectedWardName = null;
//         });
//       }
//     } catch (e) {
//       debugPrint("❌ Lỗi khi tải quận/huyện: $e");
//     }
//   }

//   void selectDistrict(Map district) {
//     setState(() {
//       selectedDistrictName = district['name'];
//       wards = district['wards'];
//       selectedWardName = null;
//     });
//   }

//   /// Lấy tọa độ từ Maps.co
//   Future<Map<String, double>?> fetchCoordinates(String fullAddress) async {
//     final encoded = Uri.encodeComponent('$fullAddress, Vietnam');
//     final url =
//         'https://geocode.maps.co/search?q=$encoded&api_key=YOUR_KEY'; // thay YOUR_KEY bằng key thật

//     try {
//       final response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         final List data = jsonDecode(response.body);
//         if (data.isNotEmpty) {
//           final lat = double.tryParse(data[0]['lat']);
//           final lon = double.tryParse(data[0]['lon']);
//           if (lat != null && lon != null) return {'lat': lat, 'lng': lon};
//         }
//       }
//     } catch (e) {
//       debugPrint("❌ Lỗi khi gọi Maps.co: $e");
//     }
//     return null;
//   }

//   Future<void> submitAddress() async {
//     final phone = phoneController.text.trim();
//     if (selectedDistrictName == null ||
//         selectedWardName == null ||
//         streetController.text.isEmpty ||
//         nameController.text.isEmpty ||
//         phone.isEmpty) {
//       _showSnack('⚠️ Vui lòng nhập đầy đủ thông tin', Colors.orange);
//       return;
//     }

//     final phoneRegex = RegExp(r'^0\d{9}$');
//     if (!phoneRegex.hasMatch(phone)) {
//       setState(() => phoneError = true);
//       _showSnack('📵 Số điện thoại không hợp lệ', Colors.red);
//       return;
//     } else {
//       setState(() => phoneError = false);
//     }

//     final fullAddress =
//         '${streetController.text}, $selectedWardName, $selectedDistrictName, $selectedProvinceName';

//     final coords = await fetchCoordinates(fullAddress);

//     final cart = Provider.of<CartProvider>(context, listen: false);
//     cart.addAddress(
//       UserAddress(
//         id: DateTime.now().millisecondsSinceEpoch.toString(),
//         receiverName: nameController.text.trim(),
//         phone: phone,
//         fullAddress: fullAddress,
//         lat: coords?['lat'],
//         lng: coords?['lng'],
//       ),
//     );

//     Navigator.pushNamed(context, '/payment');
//     _showSnack('✅ Đã thêm địa chỉ mới', Colors.green);
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

//   InputDecoration _inputDecoration(String label, IconData icon) {
//     return InputDecoration(
//       labelText: label,
//       prefixIcon: Icon(icon, color: AddressPage.themeColor),
//       filled: true,
//       fillColor: AddressPage.themeColor.withOpacity(0.1),
//       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('📍 Quản lý địa chỉ'),
//         backgroundColor: AddressPage.themeColor,
//         elevation: 4,
//       ),
//       body: FadeTransition(
//         opacity: _fade,
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               // Địa chỉ đã lưu
//               if (cart.addresses.isNotEmpty)
//                 Card(
//                   elevation: 4,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(12),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           '📌 Địa chỉ đã lưu',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: AddressPage.themeColor,
//                           ),
//                         ),
//                         const Divider(),
//                         ...cart.addresses.map((addr) {
//                           final isSelected =
//                               cart.selectedAddress?.id == addr.id;
//                           return Card(
//                             margin: const EdgeInsets.symmetric(vertical: 6),
//                             child: ListTile(
//                               leading: Icon(
//                                 isSelected
//                                     ? Icons.check_circle
//                                     : Icons.location_on,
//                                 color: isSelected
//                                     ? AddressPage.themeColor
//                                     : Colors.grey,
//                               ),
//                               title: Text(
//                                 '${addr.receiverName} - ${addr.phone}',
//                               ),
//                               subtitle: Text(addr.fullAddress),
//                               onTap: () {
//                                 cart.selectAddress(addr.id);
//                                 Navigator.pushNamed(context, '/payment');
//                               },
//                             ),
//                           );
//                         }),
//                       ],
//                     ),
//                   ),
//                 ),

//               const SizedBox(height: 20),

//               // Form thêm địa chỉ mới
//               Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         '➕ Thêm địa chỉ mới',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: AddressPage.themeColor,
//                         ),
//                       ),
//                       const Divider(),
//                       TextFormField(
//                         controller: nameController,
//                         decoration: _inputDecoration(
//                           'Tên người nhận',
//                           Icons.person,
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       TextFormField(
//                         controller: phoneController,
//                         keyboardType: TextInputType.phone,
//                         decoration:
//                             _inputDecoration(
//                               'Số điện thoại',
//                               Icons.phone,
//                             ).copyWith(
//                               errorText: phoneError
//                                   ? 'Số điện thoại không hợp lệ'
//                                   : null,
//                             ),
//                       ),
//                       const SizedBox(height: 16),

//                       TextFormField(
//                         initialValue: selectedProvinceName,
//                         readOnly: true,
//                         decoration: _inputDecoration(
//                           'Tỉnh/Thành phố',
//                           Icons.location_city,
//                         ),
//                       ),
//                       const SizedBox(height: 16),

//                       DropdownButtonFormField<String>(
//                         value: selectedDistrictName,
//                         decoration: _inputDecoration('Quận/Huyện', Icons.map),
//                         items: districts.map<DropdownMenuItem<String>>((d) {
//                           return DropdownMenuItem<String>(
//                             value: d['name'],
//                             child: Text(d['name']),
//                           );
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() {
//                             selectedDistrictName = value;
//                             final district = districts.firstWhere(
//                               (d) => d['name'] == value,
//                               orElse: () => null,
//                             );
//                             wards = district != null
//                                 ? List<Map<String, dynamic>>.from(
//                                     district['wards'],
//                                   )
//                                 : [];
//                             selectedWardName = null; // reset ward khi đổi quận
//                             debugPrint(
//                               "Wards loaded: ${wards.map((w) => w['name']).toList()}",
//                             );
//                           });
//                         },
//                       ),

//                       const SizedBox(height: 16),
//                       DropdownButtonFormField<String>(
//                         value: selectedWardName,
//                         decoration: _inputDecoration(
//                           'Phường/Xã',
//                           Icons.location_on,
//                         ),
//                         items: wards.map<DropdownMenuItem<String>>((w) {
//                           return DropdownMenuItem<String>(
//                             value: w['name'] as String,
//                             child: Text(w['name']),
//                           );
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() {
//                             selectedWardName = value;
//                             debugPrint("Ward selected: $selectedWardName");
//                           });
//                         },
//                       ),

//                       const SizedBox(height: 16),
//                       TextFormField(
//                         controller: streetController,
//                         decoration: _inputDecoration(
//                           'Số nhà, tên đường',
//                           Icons.home,
//                         ),
//                       ),
//                       const SizedBox(height: 24),
//                       Center(
//                         child: ElevatedButton.icon(
//                           onPressed: submitAddress,
//                           icon: const Icon(Icons.check_circle),
//                           label: const Text('Lưu địa chỉ'),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: AddressPage.themeColor,
//                             foregroundColor: Colors.white,
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 40,
//                               vertical: 14,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             elevation: 4,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
