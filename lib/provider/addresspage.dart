// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';

// import 'cart_provider.dart';
// import '../models/user_address.dart';

// class AddressPage extends StatefulWidget {
//   const AddressPage({super.key});

//   @override
//   State<AddressPage> createState() => _AddressPageState();
// }

// class _AddressPageState extends State<AddressPage>
//     with SingleTickerProviderStateMixin {
//   List provinces = [];
//   List districts = [];
//   List wards = [];

//   String? selectedProvinceName;
//   String? selectedDistrictName;
//   String? selectedWardName;

//   final TextEditingController streetController = TextEditingController();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();

//   late AnimationController _controller;
//   late Animation<double> _fade;

//   bool phoneError = false;

//   @override
//   void initState() {
//     super.initState();
//     fetchProvinces();

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

//   void submitAddress() {
//     final phone = phoneController.text.trim();

//     if (selectedProvinceName == null ||
//         selectedDistrictName == null ||
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

//     final cart = Provider.of<CartProvider>(context, listen: false);

//     // ✅ Tạm thời chưa có geocoding, để lat/lng null
//     cart.addAddress(
//       UserAddress(
//         id: DateTime.now().millisecondsSinceEpoch.toString(),
//         receiverName: nameController.text.trim(),
//         phone: phone,
//         fullAddress: fullAddress,
//         lat: null,
//         lng: null,
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

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('📍 Quản lý địa chỉ'),
//         backgroundColor: const Color(0xFFBFAF9B),
//         elevation: 4,
//       ),
//       body: FadeTransition(
//         opacity: _fade,
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               // Danh sách địa chỉ đã lưu
//               if (cart.addresses.isNotEmpty)
//                 Card(
//                   elevation: 5,
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
//                             color: Colors.brown,
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
//                                 color: isSelected ? Colors.green : Colors.grey,
//                               ),
//                               title: Text(
//                                 '${addr.receiverName} - ${addr.phone}',
//                               ),
//                               subtitle: Text(addr.fullAddress),
//                               trailing: PopupMenuButton<String>(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 onSelected: (value) {
//                                   if (value == 'edit') {
//                                     Navigator.pushNamed(
//                                       context,
//                                       '/address-edit',
//                                       arguments: addr,
//                                     );
//                                   } else if (value == 'delete') {
//                                     cart.deleteAddress(addr.id);
//                                     _showSnack(
//                                       '🗑️ Đã xóa địa chỉ',
//                                       Colors.red,
//                                     );
//                                   }
//                                 },
//                                 itemBuilder: (context) => [
//                                   const PopupMenuItem(
//                                     value: 'edit',
//                                     child: Text('✏️ Sửa'),
//                                   ),
//                                   const PopupMenuItem(
//                                     value: 'delete',
//                                     child: Text('🗑️ Xóa'),
//                                   ),
//                                 ],
//                               ),
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
//                 elevation: 6,
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
//                           color: Colors.brown,
//                         ),
//                       ),
//                       const Divider(),
//                       TextFormField(
//                         controller: nameController,
//                         decoration: InputDecoration(
//                           labelText: 'Tên người nhận',
//                           prefixIcon: const Icon(
//                             Icons.person,
//                             color: Colors.brown,
//                           ),
//                           filled: true,
//                           fillColor: Colors.brown.shade50,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       TextFormField(
//                         controller: phoneController,
//                         keyboardType: TextInputType.phone,
//                         decoration: InputDecoration(
//                           labelText: 'Số điện thoại',
//                           prefixIcon: const Icon(
//                             Icons.phone,
//                             color: Colors.brown,
//                           ),
//                           filled: true,
//                           fillColor: Colors.brown.shade50,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       DropdownButtonFormField<String>(
//                         value: selectedProvinceName,
//                         decoration: InputDecoration(
//                           labelText: 'Tỉnh/Thành phố',
//                           prefixIcon: const Icon(
//                             Icons.location_city,
//                             color: Colors.brown,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         items: provinces.map<DropdownMenuItem<String>>((p) {
//                           return DropdownMenuItem<String>(
//                             value: p['name'],
//                             child: Text(p['name']),
//                             onTap: () =>
//                                 fetchDistricts(p['code'].toString(), p['name']),
//                           );
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() => selectedProvinceName = value);
//                         },
//                       ),
//                       const SizedBox(height: 16),
//                       // Dropdown quận/huyện
//                       DropdownButtonFormField<String>(
//                         value: selectedDistrictName,
//                         decoration: InputDecoration(
//                           labelText: 'Quận/Huyện',
//                           prefixIcon: const Icon(
//                             Icons.map,
//                             color: Colors.brown,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         items: districts.map<DropdownMenuItem<String>>((d) {
//                           return DropdownMenuItem<String>(
//                             value: d['name'],
//                             child: Text(d['name']),
//                             onTap: () =>
//                                 fetchWards(d['code'].toString(), d['name']),
//                           );
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() => selectedDistrictName = value);
//                         },
//                       ),
//                       const SizedBox(height: 16),
//                       // Dropdown xã/phường
//                       DropdownButtonFormField<String>(
//                         value: selectedWardName,
//                         decoration: InputDecoration(
//                           labelText: 'Xã/Phường',
//                           prefixIcon: const Icon(
//                             Icons.location_on,
//                             color: Colors.brown,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         items: wards.map<DropdownMenuItem<String>>((w) {
//                           return DropdownMenuItem<String>(
//                             value: w['name'],
//                             child: Text(w['name']),
//                           );
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() => selectedWardName = value);
//                         },
//                       ),
//                       const SizedBox(height: 16),
//                       TextFormField(
//                         controller: streetController,
//                         decoration: InputDecoration(
//                           labelText: 'Số nhà, tên đường',
//                           prefixIcon: const Icon(
//                             Icons.home,
//                             color: Colors.brown,
//                           ),
//                           filled: true,
//                           fillColor: Colors.brown.shade50,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 24),
//                       Center(
//                         child: ElevatedButton.icon(
//                           onPressed: submitAddress,
//                           icon: const Icon(Icons.check_circle),
//                           label: const Text('Lưu địa chỉ'),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFFBFAF9B),
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
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'cart_provider.dart';
import '../models/user_address.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

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
    final response = await http.get(
      Uri.parse('https://provinces.open-api.vn/api/p/'),
    );
    if (response.statusCode == 200) {
      setState(() {
        provinces = jsonDecode(response.body);
      });
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

    // ✅ Lấy tọa độ từ API
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

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('📍 Quản lý địa chỉ'),
        backgroundColor: const Color(0xFFBFAF9B),
        elevation: 4,
      ),
      body: FadeTransition(
        opacity: _fade,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Danh sách địa chỉ đã lưu
              if (cart.addresses.isNotEmpty)
                Card(
                  elevation: 5,
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
                            color: Colors.brown,
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
                                color: isSelected ? Colors.green : Colors.grey,
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

              // Form thêm địa chỉ mới
              Card(
                elevation: 6,
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
                          color: Colors.brown,
                        ),
                      ),
                      const Divider(),
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
                          errorText: phoneError ? 'Số điện thoại không hợp lệ' : null,
                        ),
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: selectedProvinceName,
                        decoration: InputDecoration(
                          labelText: 'Tỉnh/Thành phố',
                          prefixIcon: const Icon(Icons.location_city, color: Colors.brown),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        items: provinces.map<DropdownMenuItem<String>>((p) {
                          return DropdownMenuItem<String>(
                            value: p['name'],
                            child: Text(p['name']),
                            onTap: () =>
                                fetchDistricts(p['code'].toString(), p['name']),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() => selectedProvinceName = value);
                        },
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: selectedDistrictName,
                        decoration: InputDecoration(
                          labelText: 'Quận/Huyện',
                          prefixIcon: const Icon(Icons.map, color: Colors.brown),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
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
                        decoration: InputDecoration(
                          labelText: 'Xã/Phường',
                          prefixIcon: const Icon(Icons.location_on, color: Colors.brown),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
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
                        decoration: InputDecoration(
                          labelText: 'Số nhà, tên đường',
                          prefixIcon: const Icon(Icons.home, color: Colors.brown),
                          filled: true,
                          fillColor: Colors.brown.shade50,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: submitAddress,
                          icon: const Icon(Icons.check_circle),
                          label: const Text('Lưu địa chỉ'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFBFAF9B),
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
