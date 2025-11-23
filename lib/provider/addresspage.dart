// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import '../provider/cart_provider.dart';

// class AddressPage extends StatefulWidget {
//   const AddressPage({super.key});

//   @override
//   State<AddressPage> createState() => _AddressPageState();
// }

// class _AddressPageState extends State<AddressPage>
//     with SingleTickerProviderStateMixin {
//   final _formKey = GlobalKey<FormState>();
//   final _controller = TextEditingController();
//   late AnimationController _animController;
//   late Animation<double> _fade;
//   late GoogleMapController mapController;
//   bool showShippingInfo = false;

//   final List<Map<String, dynamic>> branches = [
//     {
//       'label': 'Chi nhánh Quận 1',
//       'lat': 10.7769,
//       'lng': 106.7009,
//       'openTime': '08:30',
//       'closeTime': '22:00',
//     },
//     {
//       'label': 'Chi nhánh Bình Thạnh',
//       'lat': 10.8142,
//       'lng': 106.7110,
//       'openTime': '08:30',
//       'closeTime': '22:00',
//     },
//     {
//       'label': 'Chi nhánh Gò Vấp',
//       'lat': 10.8380,
//       'lng': 106.6645,
//       'openTime': '08:30',
//       'closeTime': '22:00',
//     },
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _animController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );
//     _fade = CurvedAnimation(parent: _animController, curve: Curves.easeIn);
//     _animController.forward();
//     loadBranchFromPrefs();
//   }

//   Future<void> loadBranchFromPrefs() async {
//     final prefs = await SharedPreferences.getInstance();
//     final label = prefs.getString('selectedBranch');
//     if (label != null) {
//       Provider.of<CartProvider>(context, listen: false).setBranch(label);
//     }
//   }

//   bool isBranchOpen(String openTime, String closeTime) {
//     final now = TimeOfDay.now();
//     final open = TimeOfDay(
//       hour: int.parse(openTime.split(':')[0]),
//       minute: int.parse(openTime.split(':')[1]),
//     );
//     final close = TimeOfDay(
//       hour: int.parse(closeTime.split(':')[0]),
//       minute: int.parse(closeTime.split(':')[1]),
//     );

//     final nowMinutes = now.hour * 60 + now.minute;
//     final openMinutes = open.hour * 60 + open.minute;
//     final closeMinutes = close.hour * 60 + close.minute;

//     return nowMinutes >= openMinutes && nowMinutes <= closeMinutes;
//   }

//   Future<void> calculateShipping(String address) async {
//     final cart = Provider.of<CartProvider>(context, listen: false);
//     cart.setAddress(address);

//     try {
//       await cart.calculateShippingFromAddress(address);
//     } catch (e) {
//       print('Lỗi khi tính phí giao hàng: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Không thể tính phí giao hàng từ địa chỉ này'),
//         ),
//       );
//       return;
//     }

//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('selectedBranch', cart.selectedBranch ?? '');

//     setState(() => showShippingInfo = true);

//     final selected = branches.firstWhere(
//       (b) => b['label'] == cart.selectedBranch,
//       orElse: () => branches[0],
//     );

//     mapController.animateCamera(
//       CameraUpdate.newLatLng(LatLng(selected['lat'], selected['lng'])),
//     );
//   }

//   Set<Marker> getBranchMarkers() {
//     return branches.map((branch) {
//       return Marker(
//         markerId: MarkerId(branch['label']),
//         position: LatLng(branch['lat'], branch['lng']),
//         infoWindow: InfoWindow(title: branch['label']),
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
//       );
//     }).toSet();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _animController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);
//     final initialPosition = CameraPosition(
//       target: LatLng(branches[0]['lat'], branches[0]['lng']),
//       zoom: 12,
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Địa chỉ giao hàng'),
//         backgroundColor: const Color(0xFFBFAF9B),
//       ),
//       body: FadeTransition(
//         opacity: _fade,
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Vui lòng nhập địa chỉ nhận hàng của bạn:',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: _controller,
//                   decoration: InputDecoration(
//                     labelText: 'Địa chỉ',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     prefixIcon: const Icon(Icons.location_on),
//                   ),
//                   validator: (value) => value == null || value.trim().isEmpty
//                       ? 'Vui lòng nhập địa chỉ'
//                       : null,
//                 ),
//                 const SizedBox(height: 12),
//                 SizedBox(
//                   height: 200,
//                   child: GoogleMap(
//                     initialCameraPosition: initialPosition,
//                     markers: getBranchMarkers(),
//                     onMapCreated: (controller) => mapController = controller,
//                     zoomControlsEnabled: false,
//                     myLocationEnabled: false,
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 if (showShippingInfo)
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Chi nhánh: ${cart.selectedBranch}'),
//                       Text('Phí vận chuyển: ${cart.shippingFee.toInt()}₫'),
//                       Text(
//                         'Thời gian giao hàng: ${cart.deliveryTime ?? '---'}',
//                       ),
//                       Text(
//                         isBranchOpen(
//                               branches.firstWhere(
//                                 (b) => b['label'] == cart.selectedBranch,
//                               )['openTime'],
//                               branches.firstWhere(
//                                 (b) => b['label'] == cart.selectedBranch,
//                               )['closeTime'],
//                             )
//                             ? '🟢 Chi nhánh đang mở cửa'
//                             : '🔴 Chi nhánh đã đóng cửa',
//                         style: TextStyle(
//                           color:
//                               isBranchOpen(
//                                 branches.firstWhere(
//                                   (b) => b['label'] == cart.selectedBranch,
//                                 )['openTime'],
//                                 branches.firstWhere(
//                                   (b) => b['label'] == cart.selectedBranch,
//                                 )['closeTime'],
//                               )
//                               ? Colors.green
//                               : Colors.red,
//                         ),
//                       ),
//                     ],
//                   ),
//                 const Spacer(),
//                 ElevatedButton.icon(
//                   onPressed: () async {
//                     if (_formKey.currentState!.validate()) {
//                       await calculateShipping(_controller.text.trim());
//                       Navigator.pushNamed(context, '/payment');
//                     }
//                   },
//                   icon: const Icon(Icons.arrow_forward),
//                   label: const Text('Tiếp tục'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFBFAF9B),
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 14,
//                       horizontal: 24,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     textStyle: const TextStyle(fontSize: 16),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class AddressPage extends StatefulWidget {
//   const AddressPage({super.key});

//   @override
//   State<AddressPage> createState() => _AddressPageState();
// }

// class _AddressPageState extends State<AddressPage> {
//   List provinces = [];
//   List districts = [];
//   List wards = [];

//   String? selectedProvince;
//   String? selectedDistrict;
//   String? selectedWard;

//   final TextEditingController streetController = TextEditingController();
//   bool isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     fetchProvinces();
//   }

//   Future<void> fetchProvinces() async {
//     setState(() => isLoading = true);
//     final response = await http.get(
//       Uri.parse('https://provinces.open-api.vn/api/p/'),
//     );
//     if (response.statusCode == 200) {
//       setState(() {
//         provinces = jsonDecode(response.body);
//         isLoading = false;
//       });
//     }
//   }

//   Future<void> fetchDistricts(String provinceCode) async {
//     setState(() => isLoading = true);
//     final response = await http.get(
//       Uri.parse('https://provinces.open-api.vn/api/p/$provinceCode?depth=2'),
//     );
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       setState(() {
//         districts = data['districts'];
//         wards = [];
//         selectedDistrict = null;
//         selectedWard = null;
//         isLoading = false;
//       });
//     }
//   }

//   Future<void> fetchWards(String districtCode) async {
//     setState(() => isLoading = true);
//     final response = await http.get(
//       Uri.parse('https://provinces.open-api.vn/api/d/$districtCode?depth=2'),
//     );
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       setState(() {
//         wards = data['wards'];
//         selectedWard = null;
//         isLoading = false;
//       });
//     }
//   }

//   void submitAddress() {
//     final fullAddress =
//         '${streetController.text}, ${selectedWard ?? ''}, ${selectedDistrict ?? ''}, ${selectedProvince ?? ''}';
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Row(
//           children: const [
//             Icon(Icons.check_circle, color: Colors.green),
//             SizedBox(width: 8),
//             Text('Địa chỉ đã xác nhận!'),
//           ],
//         ),
//         duration: const Duration(seconds: 2),
//       ),
//     );

//     Navigator.pushNamed(context, '/payment', arguments: fullAddress);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Chọn địa chỉ giao hàng')),
//       body: isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : SingleChildScrollView(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   AnimatedSwitcher(
//                     duration: const Duration(milliseconds: 300),
//                     child: DropdownButtonFormField<String>(
//                       key: ValueKey(selectedProvince),
//                       value: selectedProvince,
//                       hint: const Text('Chọn Tỉnh/Thành phố'),
//                       items: provinces.map<DropdownMenuItem<String>>((p) {
//                         return DropdownMenuItem<String>(
//                           value: p['code'].toString(),
//                           child: Text(p['name']),
//                         );
//                       }).toList(),
//                       onChanged: (value) {
//                         setState(() => selectedProvince = value);
//                         fetchDistricts(value!);
//                       },
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   AnimatedSwitcher(
//                     duration: const Duration(milliseconds: 300),
//                     child: DropdownButtonFormField<String>(
//                       key: ValueKey(selectedDistrict),
//                       value: selectedDistrict,
//                       hint: const Text('Chọn Quận/Huyện'),
//                       items: districts.map<DropdownMenuItem<String>>((d) {
//                         return DropdownMenuItem<String>(
//                           value: d['code'].toString(),
//                           child: Text(d['name']),
//                         );
//                       }).toList(),
//                       onChanged: (value) {
//                         setState(() => selectedDistrict = value);
//                         fetchWards(value!);
//                       },
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   AnimatedSwitcher(
//                     duration: const Duration(milliseconds: 300),
//                     child: DropdownButtonFormField<String>(
//                       key: ValueKey(selectedWard),
//                       value: selectedWard,
//                       hint: const Text('Chọn Xã/Phường'),
//                       items: wards.map<DropdownMenuItem<String>>((w) {
//                         return DropdownMenuItem<String>(
//                           value: w['name'],
//                           child: Text(w['name']),
//                         );
//                       }).toList(),
//                       onChanged: (value) {
//                         setState(() => selectedWard = value);
//                       },
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   TextFormField(
//                     controller: streetController,
//                     decoration: const InputDecoration(
//                       labelText: 'Số nhà, tên đường',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton.icon(
//                     onPressed: submitAddress,
//                     icon: const Icon(Icons.location_on),
//                     label: const Text('Xác nhận địa chỉ'),
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 14),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       backgroundColor: Colors.pink,
//                       textStyle: const TextStyle(fontSize: 16),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';

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

  void submitAddress() {
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

    final cart = Provider.of<CartProvider>(context, listen: false);

    cart.addAddress(
      UserAddress(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        receiverName: nameController.text.trim(),
        phone: phone,
        fullAddress: fullAddress,
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
                          return ListTile(
                            leading: Icon(
                              isSelected
                                  ? Icons.check_circle
                                  : Icons.location_on,
                              color: isSelected ? Colors.green : Colors.grey,
                            ),
                            title: Text('${addr.receiverName} - ${addr.phone}'),
                            subtitle: Text(addr.fullAddress),
                            trailing: PopupMenuButton<String>(
                              onSelected: (value) {
                                if (value == 'edit') {
                                  Navigator.pushNamed(
                                    context,
                                    '/address-edit',
                                    arguments: addr,
                                  );
                                } else if (value == 'delete') {
                                  cart.deleteAddress(addr.id);
                                  _showSnack('🗑️ Đã xóa địa chỉ', Colors.red);
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
                          );
                        }).toList(),
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
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.brown,
                          ),
                          filled: true,
                          fillColor: Colors.brown.shade50,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: phoneError ? Colors.red : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Số điện thoại',
                            prefixIcon: const Icon(
                              Icons.phone,
                              color: Colors.brown,
                            ),
                            filled: true,
                            fillColor: Colors.brown.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: selectedProvinceName,
                        decoration: InputDecoration(
                          labelText: 'Tỉnh/Thành phố',
                          prefixIcon: const Icon(
                            Icons.location_city,
                            color: Colors.brown,
                          ),
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
                        value: selectedWardName,
                        decoration: InputDecoration(
                          labelText: 'Xã/Phường',
                          prefixIcon: const Icon(
                            Icons.location_on,
                            color: Colors.brown,
                          ),
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
                          prefixIcon: const Icon(
                            Icons.home,
                            color: Colors.brown,
                          ),
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
