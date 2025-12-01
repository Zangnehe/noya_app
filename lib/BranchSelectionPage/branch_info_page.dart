// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:provider/provider.dart';
// import 'dart:math';

// import '../provider/cart_provider.dart';

// class BranchInfoPage extends StatefulWidget {
//   const BranchInfoPage({super.key});

//   @override
//   State<BranchInfoPage> createState() => _BranchInfoPageState();
// }

// class _BranchInfoPageState extends State<BranchInfoPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fade;
//   String? selectedBranch;
//   bool isLoading = false;
//   Position? currentPosition;

//   final List<Map<String, dynamic>> branches = [
//     {
//       'label': 'Chi nhánh Quận 1',
//       'address': '123 Lê Lợi, Quận 1, TP.HCM',
//       'openTime': '08:30',
//       'closeTime': '22:00',
//       'lat': 10.7769,
//       'lng': 106.7009,
//       'gifUrl': 'https://ss-images.saostar.vn/2017/09/09/1558799/anigif.gif',
//     },
//     {
//       'label': 'Chi nhánh Bình Thạnh',
//       'address': '456 Điện Biên Phủ, Bình Thạnh, TP.HCM',
//       'openTime': '08:30',
//       'closeTime': '22:00',
//       'lat': 10.8142,
//       'lng': 106.7110,
//       'gifUrl':
//           'https://media.hasaki.vn/wysiwyg/HaNguyen/wb_eye_gel_texture_01-200506.gif',
//     },
//     {
//       'label': 'Chi nhánh Gò Vấp',
//       'address': '789 Quang Trung, Gò Vấp, TP.HCM',
//       'openTime': '08:30',
//       'closeTime': '22:00',
//       'lat': 10.8380,
//       'lng': 106.6645,
//       'gifUrl':
//           'https://thaodung.vn/wp-content/uploads/2023/08/san-pham-kem-em-be-thao-dung.gif',
//     },
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 600),
//     );
//     _fade = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
//     _controller.forward();
//     loadBranch();
//   }

//   Future<void> saveBranch(String label) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('selectedBranch', label);
//   }

//   Future<void> loadBranch() async {
//     final prefs = await SharedPreferences.getInstance();
//     final saved = prefs.getString('selectedBranch');
//     if (saved != null) {
//       setState(() => selectedBranch = saved);
//       // ✅ đồng bộ với CartProvider khi load lại
//       final cart = Provider.of<CartProvider>(context, listen: false);
//       cart.setBranch(saved);
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

//   double _deg2rad(double deg) => deg * pi / 180;

//   double calculateDistanceKm(
//     double lat1,
//     double lng1,
//     double lat2,
//     double lng2,
//   ) {
//     const earthRadius = 6371;
//     final dLat = _deg2rad(lat2 - lat1);
//     final dLng = _deg2rad(lng2 - lng1);
//     final a =
//         sin(dLat / 2) * sin(dLat / 2) +
//         cos(_deg2rad(lat1)) *
//             cos(_deg2rad(lat2)) *
//             sin(dLng / 2) *
//             sin(dLng / 2);
//     final c = 2 * atan2(sqrt(a), sqrt(1 - a));
//     return earthRadius * c;
//   }

//   Future<void> autoSelectNearestBranch() async {
//     setState(() => isLoading = true);
//     try {
//       final permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied ||
//           permission == LocationPermission.deniedForever) {
//         throw Exception('Quyền truy cập vị trí bị từ chối');
//       }

//       final position = await Geolocator.getCurrentPosition();
//       currentPosition = position;

//       double minDistance = double.infinity;
//       Map<String, dynamic>? nearest;

//       for (var branch in branches) {
//         final d = calculateDistanceKm(
//           position.latitude,
//           position.longitude,
//           branch['lat'],
//           branch['lng'],
//         );
//         if (d < minDistance) {
//           minDistance = d;
//           nearest = branch;
//         }
//       }

//       if (!mounted) return;
//       if (nearest != null && nearest['label'] is String) {
//         final label = nearest['label'] as String;
//         setState(() => selectedBranch = label);
//         await saveBranch(label);
//         // ✅ đồng bộ với CartProvider
//         final cart = Provider.of<CartProvider>(context, listen: false);
//         cart.setBranch(label);

//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('✅ Đã chọn $label gần bạn nhất')),
//         );
//       }
//     } catch (e) {
//       if (!mounted) return;
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('❌ Không thể lấy vị trí hiện tại')),
//       );
//     } finally {
//       if (mounted) setState(() => isLoading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context, listen: false);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Thông tin chi nhánh'),
//         backgroundColor: const Color(0xFFBFAF9B),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.my_location),
//             tooltip: 'Tự động chọn gần nhất',
//             onPressed: isLoading ? null : autoSelectNearestBranch,
//           ),
//         ],
//       ),
//       body: FadeTransition(
//         opacity: _fade,
//         child: ListView.builder(
//           padding: const EdgeInsets.all(16),
//           itemCount: branches.length,
//           itemBuilder: (context, index) {
//             final branch = branches[index];
//             final isOpen = isBranchOpen(
//               branch['openTime'],
//               branch['closeTime'],
//             );
//             final isSelected = branch['label'] == selectedBranch;

//             double? distance;
//             if (currentPosition != null) {
//               distance = calculateDistanceKm(
//                 currentPosition!.latitude,
//                 currentPosition!.longitude,
//                 branch['lat'],
//                 branch['lng'],
//               );
//             }

//             return AnimatedScale(
//               scale: isSelected ? 1.02 : 1.0,
//               duration: const Duration(milliseconds: 300),
//               child: AnimatedOpacity(
//                 opacity: isSelected ? 1 : 0.9,
//                 duration: const Duration(milliseconds: 300),
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   margin: const EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                     color: isSelected
//                         ? const Color(0xFFBFAF9B).withOpacity(0.15)
//                         : Colors.white,
//                     border: Border.all(
//                       color: isSelected
//                           ? const Color(0xFFBFAF9B)
//                           : Colors.grey.shade300,
//                       width: isSelected ? 2 : 1,
//                     ),
//                     borderRadius: BorderRadius.circular(12),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.shade200,
//                         blurRadius: 6,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: InkWell(
//                     borderRadius: BorderRadius.circular(12),
//                     onTap: () async {
//                       setState(() => selectedBranch = branch['label']);
//                       await saveBranch(branch['label']);
//                       // ✅ đồng bộ với CartProvider
//                       cart.setBranch(branch['label']);

//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('✅ Đã chọn ${branch['label']}')),
//                       );
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(12),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           if (branch['gifUrl'] != null)
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(8),
//                               child: Image.network(
//                                 branch['gifUrl'],
//                                 height: 120,
//                                 width: double.infinity,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           const SizedBox(height: 8),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.store,
//                                 color: isOpen ? Colors.green : Colors.red,
//                               ),
//                               const SizedBox(width: 8),
//                               Expanded(
//                                 child: Text(
//                                   branch['label'],
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               AnimatedSwitcher(
//                                 duration: const Duration(milliseconds: 300),
//                                 child: isSelected
//                                     ? const Icon(
//                                         Icons.check_circle,
//                                         key: ValueKey('selected'),
//                                         color: Color(0xFFBFAF9B),
//                                       )
//                                     : const SizedBox(
//                                         key: ValueKey('unselected'),
//                                       ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 6),
//                           Text('📍 ${branch['address']}'),
//                           Text(
//                             '🕒 ${branch['openTime']} - ${branch['closeTime']}',
//                           ),
//                           Text(
//                             isOpen ? '🟢 Đang mở cửa' : '🔴 Đã đóng cửa',
//                             style: TextStyle(
//                               color: isOpen ? Colors.green : Colors.red,
//                             ),
//                           ),
//                           if (distance != null)
//                             Text(
//                               '📏 Cách bạn khoảng ${distance.toStringAsFixed(1)} km',
//                             ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import '../provider/cart_provider.dart';

class BranchInfoPage extends StatefulWidget {
  const BranchInfoPage({super.key});

  static const Color themeColor = Color(0xFFBFAF9B);

  @override
  State<BranchInfoPage> createState() => _BranchInfoPageState();
}

class _BranchInfoPageState extends State<BranchInfoPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  String? selectedBranch;
  bool isLoading = false;
  Position? currentPosition;

  final List<Map<String, dynamic>> branches = [
    {
      'label': 'Chi nhánh Quận 1',
      'address': '123 Lê Lợi, Quận 1, TP.HCM',
      'openTime': '08:30',
      'closeTime': '22:00',
      'lat': 10.7769,
      'lng': 106.7009,
    },
    {
      'label': 'Chi nhánh Bình Thạnh',
      'address': '456 Điện Biên Phủ, Bình Thạnh, TP.HCM',
      'openTime': '08:30',
      'closeTime': '22:00',
      'lat': 10.8142,
      'lng': 106.7110,
    },
    {
      'label': 'Chi nhánh Gò Vấp',
      'address': '789 Quang Trung, Gò Vấp, TP.HCM',
      'openTime': '08:30',
      'closeTime': '22:00',
      'lat': 10.8380,
      'lng': 106.6645,
    },
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.forward();
    loadBranch();
  }

  Future<void> saveBranch(String label) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedBranch', label);
  }

  Future<void> loadBranch() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString('selectedBranch');
    if (saved != null) {
      setState(() => selectedBranch = saved);
      final cart = Provider.of<CartProvider>(context, listen: false);
      cart.setBranch(saved);
    }
  }

  bool isBranchOpen(String openTime, String closeTime) {
    final now = TimeOfDay.now();
    final open = TimeOfDay(
      hour: int.parse(openTime.split(':')[0]),
      minute: int.parse(openTime.split(':')[1]),
    );
    final close = TimeOfDay(
      hour: int.parse(closeTime.split(':')[0]),
      minute: int.parse(closeTime.split(':')[1]),
    );
    final nowMinutes = now.hour * 60 + now.minute;
    final openMinutes = open.hour * 60 + open.minute;
    final closeMinutes = close.hour * 60 + close.minute;
    return nowMinutes >= openMinutes && nowMinutes <= closeMinutes;
  }

  double _deg2rad(double deg) => deg * pi / 180;

  double calculateDistanceKm(
    double lat1,
    double lng1,
    double lat2,
    double lng2,
  ) {
    const earthRadius = 6371;
    final dLat = _deg2rad(lat2 - lat1);
    final dLng = _deg2rad(lng2 - lng1);
    final a =
        sin(dLat / 2) * sin(dLat / 2) +
        cos(_deg2rad(lat1)) *
            cos(_deg2rad(lat2)) *
            sin(dLng / 2) *
            sin(dLng / 2);
    final c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return earthRadius * c;
  }

  Future<void> autoSelectNearestBranch() async {
    setState(() => isLoading = true);
    try {
      final permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        throw Exception('Quyền truy cập vị trí bị từ chối');
      }

      final position = await Geolocator.getCurrentPosition();
      currentPosition = position;

      double minDistance = double.infinity;
      Map<String, dynamic>? nearest;

      for (var branch in branches) {
        final d = calculateDistanceKm(
          position.latitude,
          position.longitude,
          branch['lat'],
          branch['lng'],
        );
        if (d < minDistance) {
          minDistance = d;
          nearest = branch;
        }
      }

      if (!mounted) return;
      if (nearest != null) {
        final label = nearest['label'] as String;
        setState(() => selectedBranch = label);
        await saveBranch(label);
        final cart = Provider.of<CartProvider>(context, listen: false);
        cart.setBranch(label);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('✅ Đã chọn $label gần bạn nhất'),
            backgroundColor: BranchInfoPage.themeColor,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('❌ Không thể lấy vị trí hiện tại'),
          backgroundColor: Colors.red.shade400,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          duration: const Duration(seconds: 2),
        ),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('🏬 Thông tin chi nhánh'),
        backgroundColor: BranchInfoPage.themeColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.my_location),
            tooltip: 'Tự động chọn gần nhất',
            onPressed: isLoading ? null : autoSelectNearestBranch,
          ),
        ],
      ),
      body: FadeTransition(
        opacity: _fade,
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: branches.length,
          itemBuilder: (context, index) {
            final branch = branches[index];
            final isOpen = isBranchOpen(
              branch['openTime'],
              branch['closeTime'],
            );
            final isSelected = branch['label'] == selectedBranch;

            double? distance;
            if (currentPosition != null) {
              distance = calculateDistanceKm(
                currentPosition!.latitude,
                currentPosition!.longitude,
                branch['lat'],
                branch['lng'],
              );
            }

            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () async {
                  setState(() => selectedBranch = branch['label']);
                  await saveBranch(branch['label']);
                  cart.setBranch(branch['label']);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('✅ Đã chọn ${branch['label']}'),
                      backgroundColor: BranchInfoPage.themeColor,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.store,
                            color: isOpen ? Colors.green : Colors.red,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              branch['label'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          if (isSelected)
                            const Icon(
                              Icons.check_circle,
                              color: BranchInfoPage.themeColor,
                            ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text('📍 ${branch['address']}'),
                      Text('🕒 ${branch['openTime']} - ${branch['closeTime']}'),
                      Text(
                        isOpen ? '🟢 Đang mở cửa' : '🔴 Đã đóng cửa',
                        style: TextStyle(
                          color: isOpen ? Colors.green : Colors.red,
                        ),
                      ),
                      if (distance != null)
                        Text(
                          '📏 Cách bạn khoảng ${distance.toStringAsFixed(1)} km',
                          style: const TextStyle(color: Colors.black54),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
