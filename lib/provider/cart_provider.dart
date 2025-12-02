// // import 'package:flutter/material.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:uuid/uuid.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import '../models/product.dart';
// // import 'dart:math';

// // class CartProvider extends ChangeNotifier {
// //   final List<Product> _items = [];
// //   String? address;
// //   String? paymentMethod = 'COD';
// //   double _discountPercent = 0.0;
// //   String? discountCode;

// //   String? branchLabel;
// //   double _shippingFee = 0.0;
// //   String? estimatedDelivery;

// //   double? userLat;
// //   double? userLng;

// //   String? orderNote;

// //   void setNote(String value) {
// //     orderNote = value;
// //     notifyListeners();
// //   }

// //   List<Product> get items => _items;
// //   String? get selectedAddress => address;
// //   String? get selectedPaymentMethod => paymentMethod;
// //   double get discountPercent => _discountPercent;
// //   double get shippingFee {
// //     if (userLat == null ||
// //         userLng == null ||
// //         branchLat == null ||
// //         branchLng == null)
// //       return 0;
// //     final distance = calculateDistanceKm(
// //       userLat!,
// //       userLng!,
// //       branchLat!,
// //       branchLng!,
// //     );
// //     return calculateShippingFee(distance);
// //   }

// //   String? get selectedBranch => branchLabel;
// //   String? get deliveryTime => estimatedDelivery;

// //   CartProvider() {
// //     loadCart();
// //   }

// //   void setAddress(String value) {
// //     address = value;
// //     notifyListeners();
// //   }

// //   void setPaymentMethod(String value) {
// //     paymentMethod = value;
// //     notifyListeners();
// //   }

// //   void setUserLocation(double lat, double lng) {
// //     userLat = lat;
// //     userLng = lng;
// //     notifyListeners();
// //   }

// //   double? branchLat;
// //   double? branchLng;

// //   void setBranch(String label) {
// //     branchLabel = label;

// //     switch (label) {
// //       case 'Chi nhánh Quận 1':
// //         branchLat = 10.7769;
// //         branchLng = 106.7009;
// //         estimatedDelivery = 'Giao trong 1-2 ngày';
// //         break;
// //       case 'Chi nhánh Bình Thạnh':
// //         branchLat = 10.8031;
// //         branchLng = 106.7070;
// //         estimatedDelivery = 'Giao trong 2-3 ngày';
// //         break;
// //       case 'Chi nhánh Gò Vấp':
// //         branchLat = 10.8380;
// //         branchLng = 106.6647;
// //         estimatedDelivery = 'Giao trong 3-4 ngày';
// //         break;
// //       default:
// //         branchLat = null;
// //         branchLng = null;
// //         estimatedDelivery = 'Chưa xác định';
// //     }

// //     notifyListeners();
// //   }

// //   Future<void> calculateShippingFromAddress(String address) async {
// //     if (branchLabel != null) return;

// //     const apiKey = 'YOUR_GOOGLE_API_KEY';
// //     final encodedAddress = Uri.encodeComponent(address);
// //     final geoUrl =
// //         'https://maps.googleapis.com/maps/api/geocode/json?address=$encodedAddress&key=$apiKey';

// //     final geoRes = await http.get(Uri.parse(geoUrl));
// //     final geoData = jsonDecode(geoRes.body);

// //     if (geoData['status'] != 'OK')
// //       throw Exception('Không tìm được tọa độ từ địa chỉ');

// //     final location = geoData['results'][0]['geometry']['location'];
// //     final lat = location['lat'];
// //     final lng = location['lng'];
// //     setUserLocation(lat, lng);

// //     final branches = [
// //       {'label': 'Chi nhánh Quận 1', 'lat': 10.7769, 'lng': 106.7009},
// //       {'label': 'Chi nhánh Bình Thạnh', 'lat': 10.8142, 'lng': 106.7110},
// //       {'label': 'Chi nhánh Gò Vấp', 'lat': 10.8380, 'lng': 106.6645},
// //     ];

// //     double minDistance = double.infinity;
// //     Map<String, dynamic>? nearestBranch;
// //     String? durationText;

// //     for (var branch in branches) {
// //       final origins = '$lat,$lng';
// //       final destinations = '${branch['lat']},${branch['lng']}';
// //       final distUrl =
// //           'https://maps.googleapis.com/maps/api/distancematrix/json?origins=$origins&destinations=$destinations&key=$apiKey&language=vi';

// //       final distRes = await http.get(Uri.parse(distUrl));
// //       final distData = jsonDecode(distRes.body);

// //       if (distData['status'] == 'OK') {
// //         final element = distData['rows'][0]['elements'][0];
// //         if (element['status'] == 'OK') {
// //           final distanceMeters = element['distance']['value'];
// //           if (distanceMeters < minDistance) {
// //             minDistance = distanceMeters.toDouble();
// //             nearestBranch = branch;
// //             durationText = element['duration']['text'];
// //           }
// //         }
// //       }
// //     }

// //     if (nearestBranch != null) {
// //       branchLabel = nearestBranch['label'];
// //       _shippingFee = (minDistance / 1000 * 4000).roundToDouble();
// //       estimatedDelivery = 'Giao hàng $durationText';
// //       notifyListeners();
// //     } else {
// //       throw Exception('Không tính được khoảng cách đến chi nhánh');
// //     }
// //   }

// //   bool isBranchOpen({
// //     required String openTime,
// //     required String closeTime,
// //     List<String>? closedDays,
// //   }) {
// //     final now = TimeOfDay.now();
// //     final weekday = DateTime.now().weekday;
// //     final dayName = [
// //       'Monday',
// //       'Tuesday',
// //       'Wednesday',
// //       'Thursday',
// //       'Friday',
// //       'Saturday',
// //       'Sunday',
// //     ][weekday - 1];

// //     if (closedDays != null && closedDays.contains(dayName)) return false;

// //     final open = TimeOfDay(
// //       hour: int.parse(openTime.split(':')[0]),
// //       minute: int.parse(openTime.split(':')[1]),
// //     );
// //     final close = TimeOfDay(
// //       hour: int.parse(closeTime.split(':')[0]),
// //       minute: int.parse(closeTime.split(':')[1]),
// //     );

// //     final nowMinutes = now.hour * 60 + now.minute;
// //     final openMinutes = open.hour * 60 + open.minute;
// //     final closeMinutes = close.hour * 60 + close.minute;

// //     return nowMinutes >= openMinutes && nowMinutes <= closeMinutes;
// //   }

// //   void addToCart(Product product) {
// //     final index = _items.indexWhere((p) => p.id == product.id);
// //     if (index != -1) {
// //       _items[index].quantity += 1;
// //     } else {
// //       _items.add(product);
// //     }
// //     saveCart();
// //     syncCartToFirebase();
// //     notifyListeners();
// //   }

// //   void removeFromCart(int index) {
// //     _items.removeAt(index);
// //     saveCart();
// //     syncCartToFirebase();
// //     notifyListeners();
// //   }

// //   void decreaseQuantity(int index) {
// //     if (_items[index].quantity > 1) {
// //       _items[index].quantity -= 1;
// //     } else {
// //       removeFromCart(index);
// //       return;
// //     }
// //     saveCart();
// //     syncCartToFirebase();
// //     notifyListeners();
// //   }

// //   void clearCart() {
// //     _items.clear();
// //     _discountPercent = 0.0;
// //     discountCode = null;
// //     saveCart();
// //     syncCartToFirebase();
// //     notifyListeners();
// //   }

// //   int get totalItems => _items.fold(0, (sum, item) => sum + item.quantity);

// //   double get subtotal => _items.fold(
// //     0,
// //     (sum, item) => sum + (item.discountPrice ?? item.price) * item.quantity,
// //   );

// //   double get tax => subtotal * 0.08;

// //   double get totalPrice => subtotal * (1 - _discountPercent);

// //   double get finalTotal => totalPrice + _shippingFee + tax;

// //   bool applyDiscountCode(String code) {
// //     if (code == 'GIAM10') {
// //       _discountPercent = 0.10;
// //       discountCode = code;
// //       notifyListeners();
// //       return true;
// //     }
// //     return false;
// //   }

// //   double _deg2rad(double deg) => deg * pi / 180;

// //   double calculateDistanceKm(
// //     double lat1,
// //     double lng1,
// //     double lat2,
// //     double lng2,
// //   ) {
// //     const earthRadius = 6371; // km
// //     final dLat = _deg2rad(lat2 - lat1);
// //     final dLng = _deg2rad(lng2 - lng1);

// //     final a =
// //         sin(dLat / 2) * sin(dLat / 2) +
// //         cos(_deg2rad(lat1)) *
// //             cos(_deg2rad(lat2)) *
// //             sin(dLng / 2) *
// //             sin(dLng / 2);

// //     final c = 2 * atan2(sqrt(a), sqrt(1 - a));
// //     return earthRadius * c;
// //   }

// //   double calculateShippingFee(double distanceKm) {
// //     if (distanceKm < 5) return 25000;
// //     if (distanceKm < 20) return 40000;
// //     if (distanceKm < 100) return 60000;
// //     return 80000;
// //   }

// //   Future<void> saveCart() async {
// //     final prefs = await SharedPreferences.getInstance();
// //     final cartJson = jsonEncode(_items.map((e) => e.toJson()).toList());
// //     await prefs.setString('cart_items', cartJson);
// //   }

// //   Future<void> loadCart() async {
// //     final prefs = await SharedPreferences.getInstance();
// //     final cartJson = prefs.getString('cart_items');
// //     if (cartJson != null) {
// //       try {
// //         final List decoded = jsonDecode(cartJson);
// //         _items.clear();
// //         _items.addAll(decoded.map((e) => Product.fromJson(e)).toList());
// //         notifyListeners();
// //       } catch (e) {
// //         print('Lỗi khi load giỏ hàng: $e');
// //       }
// //     }
// //   }

// //   Future<void> syncCartToFirebase() async {
// //     final user = FirebaseAuth.instance.currentUser;
// //     if (user == null) return;

// //     final cartData = {
// //       'items': _items.map((e) => e.toJson()).toList(),
// //       'updatedAt': FieldValue.serverTimestamp(),
// //     };

// //     try {
// //       await FirebaseFirestore.instance
// //           .collection('carts')
// //           .doc(user.uid)
// //           .set(cartData);
// //     } catch (e) {
// //       print('Lỗi khi đồng bộ Firebase: $e');
// //     }
// //   }

// //   Future<String?> submitOrder() async {
// //     final user = FirebaseAuth.instance.currentUser;
// //     if (user == null ||
// //         _items.isEmpty ||
// //         address == null ||
// //         paymentMethod == null) {
// //       print('❌ Thiếu thông tin đơn hàng');
// //       return null;
// //     }
// //     double? branchLat;
// //     double? branchLng;
// //     // Tính khoảng cách và phí vận chuyển
// //     final distanceKm = calculateDistanceKm(
// //       userLat ?? 0,
// //       userLng ?? 0,
// //       branchLat ?? 0,
// //       branchLng ?? 0,
// //     );
// //     _shippingFee = calculateShippingFee(distanceKm);

// //     final orderId = const Uuid().v4();
// //     final orderData = {
// //       'orderId': orderId,
// //       'userId': user.uid,
// //       'items': _items.map((e) => e.toJson()).toList(),
// //       'address': address,
// //       'paymentMethod': paymentMethod,
// //       'branch': branchLabel,
// //       'shippingFee': _shippingFee,
// //       'distanceKm': double.parse(distanceKm.toStringAsFixed(2)),
// //       'estimatedDelivery': estimatedDelivery,
// //       'discountCode': discountCode,
// //       'discountPercent': _discountPercent,
// //       'totalPrice': finalTotal,
// //       'createdAt': FieldValue.serverTimestamp(),
// //       'status': 'pending',
// //       'note': orderNote,
// //       'location': {'lat': userLat, 'lng': userLng},
// //     };

// //     try {
// //       await FirebaseFirestore.instance.collection('orders').add(orderData);
// //       clearCart();
// //       print('✅ Đã lưu đơn hàng: $orderId');
// //       return orderId;
// //     } catch (e) {
// //       print('❌ Lỗi khi lưu đơn hàng: $e');
// //       return null;
// //     }
// //   }

// //   Future<void> cancelOrder(String orderId) async {
// //     try {
// //       final snapshot = await FirebaseFirestore.instance
// //           .collection('orders')
// //           .where('orderId', isEqualTo: orderId)
// //           .get();

// //       for (var doc in snapshot.docs) {
// //         await doc.reference.update({'status': 'cancelled'});
// //       }

// //       print('Đã hủy đơn hàng');
// //     } catch (e) {
// //       print('Lỗi khi hủy đơn hàng: $e');
// //     }
// //   }

// //   Future<List<Map<String, dynamic>>> fetchOrderHistory() async {
// //     final user = FirebaseAuth.instance.currentUser;
// //     if (user == null) return [];

// //     try {
// //       final snapshot = await FirebaseFirestore.instance
// //           .collection('orders')
// //           .where('userId', isEqualTo: user.uid)
// //           .orderBy('createdAt', descending: true)
// //           .get();

// //       return snapshot.docs.map((doc) => doc.data()!).toList();
// //     } catch (e) {
// //       print('Lỗi khi tải lịch sử đơn hàng: $e');
// //       return [];
// //     }
// //   }
// // }
// import 'dart:convert';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:uuid/uuid.dart';
// import '../models/product.dart';

// /// Model địa chỉ người dùng
// class UserAddress {
//   final String id;
//   String receiverName;
//   String phone;
//   String fullAddress;
//   double? lat;
//   double? lng;

//   UserAddress({
//     required this.id,
//     required this.receiverName,
//     required this.phone,
//     required this.fullAddress,
//     this.lat,
//     this.lng,
//   });

//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'receiverName': receiverName,
//     'phone': phone,
//     'fullAddress': fullAddress,
//     'lat': lat,
//     'lng': lng,
//   };

//   factory UserAddress.fromJson(Map<String, dynamic> json) => UserAddress(
//     id: json['id'],
//     receiverName: json['receiverName'],
//     phone: json['phone'],
//     fullAddress: json['fullAddress'],
//     lat: (json['lat'] as num?)?.toDouble(),
//     lng: (json['lng'] as num?)?.toDouble(),
//   );
// }

// class CartProvider extends ChangeNotifier {
//   final List<Product> _items = [];

//   // Danh sách địa chỉ
//   List<UserAddress> _addresses = [];
//   UserAddress? _selectedAddress;

//   // Thanh toán
//   String? paymentMethod = 'COD';

//   // Giảm giá
//   double _discountPercent = 0.0;
//   String? discountCode;

//   // Chi nhánh và giao hàng
//   String? branchLabel;
//   double? branchLat;
//   double? branchLng;
//   String? estimatedDelivery;

//   // Phí vận chuyển
//   double _shippingFee = 0.0;

//   // Ghi chú đơn hàng
//   String? orderNote;

//   // Getter giỏ hàng
//   List<Product> get items => _items;
//   int get totalItems => _items.fold(0, (sum, item) => sum + item.quantity);
//   double get discountPercent => _discountPercent;
//   String? get selectedBranch => branchLabel;
//   String? get deliveryTime => estimatedDelivery;

//   // Getter địa chỉ
//   List<UserAddress> get addresses => _addresses;
//   UserAddress? get selectedAddress => _selectedAddress;

//   // Tính toán giá
//   double get subtotal => _items.fold(
//     0,
//     (sum, item) => sum + (item.discountPrice ?? item.price) * item.quantity,
//   );

//   double get tax => subtotal * 0.10; // 👉 Thuế 10%

//   double get totalPrice => subtotal * (1 - _discountPercent);

//   double get shippingFee {
//     if (_shippingFee > 0) return _shippingFee;
//     if (_selectedAddress?.lat == null ||
//         _selectedAddress?.lng == null ||
//         branchLat == null ||
//         branchLng == null) {
//       return 0;
//     }
//     final distance = calculateDistanceKm(
//       _selectedAddress!.lat!,
//       _selectedAddress!.lng!,
//       branchLat!,
//       branchLng!,
//     );
//     return calculateShippingFee(distance);
//   }

//   double get finalTotal => totalPrice + shippingFee + tax;

//   CartProvider() {
//     loadCart();
//     loadAddresses();
//   }

//   // Quản lý ghi chú
//   void setNote(String value) {
//     orderNote = value;
//     notifyListeners();
//   }

//   // Quản lý địa chỉ
//   void addAddress(UserAddress address) {
//     _addresses.add(address);
//     _selectedAddress = address;
//     saveAddresses();
//     notifyListeners();
//   }

//   void updateAddress(String id, UserAddress newAddress) {
//     final index = _addresses.indexWhere((a) => a.id == id);
//     if (index != -1) {
//       _addresses[index] = newAddress;
//       if (_selectedAddress?.id == id) {
//         _selectedAddress = newAddress;
//       }
//       saveAddresses();
//       notifyListeners();
//     }
//   }

//   void deleteAddress(String id) {
//     _addresses.removeWhere((a) => a.id == id);
//     if (_selectedAddress?.id == id) {
//       _selectedAddress = _addresses.isNotEmpty ? _addresses.first : null;
//     }
//     saveAddresses();
//     notifyListeners();
//   }

//   void selectAddress(String id) {
//     _selectedAddress = _addresses.firstWhere((a) => a.id == id);
//     notifyListeners();
//   }

//   Future<void> saveAddresses() async {
//     final prefs = await SharedPreferences.getInstance();
//     final jsonList = _addresses.map((e) => e.toJson()).toList();
//     await prefs.setString('user_addresses', jsonEncode(jsonList));
//   }

//   Future<void> loadAddresses() async {
//     final prefs = await SharedPreferences.getInstance();
//     final jsonString = prefs.getString('user_addresses');
//     if (jsonString != null) {
//       try {
//         final List decoded = jsonDecode(jsonString);
//         _addresses = decoded.map((e) => UserAddress.fromJson(e)).toList();
//         if (_addresses.isNotEmpty) {
//           _selectedAddress = _addresses.first;
//         }
//         notifyListeners();
//       } catch (e) {
//         debugPrint('Lỗi khi load địa chỉ: $e');
//       }
//     }
//   }

//   // Quản lý phương thức thanh toán
//   void setPaymentMethod(String value) {
//     paymentMethod = value;
//     notifyListeners();
//   }

//   // Quản lý chi nhánh
//   void setBranch(String label) {
//     branchLabel = label;
//     switch (label) {
//       case 'Chi nhánh Quận 1':
//         branchLat = 10.7769;
//         branchLng = 106.7009;
//         estimatedDelivery = 'Giao trong 1-2 ngày';
//         break;
//       case 'Chi nhánh Bình Thạnh':
//         branchLat = 10.8031;
//         branchLng = 106.7070;
//         estimatedDelivery = 'Giao trong 2-3 ngày';
//         break;
//       case 'Chi nhánh Gò Vấp':
//         branchLat = 10.8380;
//         branchLng = 106.6647;
//         estimatedDelivery = 'Giao trong 3-4 ngày';
//         break;
//       default:
//         branchLat = null;
//         branchLng = null;
//         estimatedDelivery = 'Chưa xác định';
//     }
//     notifyListeners();
//   }

//   // Tính khoảng cách và phí ship
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

//   double calculateShippingFee(double distanceKm) {
//     if (distanceKm < 5) return 25000;
//     if (distanceKm < 20) return 40000;
//     if (distanceKm < 100) return 60000;
//     return 80000;
//   }

//   // Quản lý giỏ hàng
//   void addToCart(Product product) {
//     final index = _items.indexWhere((p) => p.id == product.id);
//     if (index != -1) {
//       _items[index].quantity += product.quantity;
//     } else {
//       _items.add(product);
//     }
//     saveCart();
//     syncCartToFirebase();
//     notifyListeners();
//   }

//   void removeFromCart(int index) {
//     _items.removeAt(index);
//     saveCart();
//     syncCartToFirebase();
//     notifyListeners();
//   }

//   void decreaseQuantity(int index) {
//     if (_items[index].quantity > 1) {
//       _items[index].quantity -= 1;
//     } else {
//       removeFromCart(index);
//       return;
//     }
//     saveCart();
//     syncCartToFirebase();
//     notifyListeners();
//   }

//   void clearCart() {
//     _items.clear();
//     _discountPercent = 0.0;
//     discountCode = null;
//     saveCart();
//     syncCartToFirebase();
//     notifyListeners();
//   }

//   bool applyDiscountCode(String code) {
//     if (code == 'GIAM10') {
//       _discountPercent = 0.10;
//       discountCode = code;
//       notifyListeners();
//       return true;
//     }
//     return false;
//   }

//   // Lưu/Load giỏ hàng
//   Future<void> saveCart() async {
//     final prefs = await SharedPreferences.getInstance();
//     final cartJson = jsonEncode(_items.map((e) => e.toJson()).toList());
//     await prefs.setString('cart_items', cartJson);
//   }

//   Future<void> loadCart() async {
//     final prefs = await SharedPreferences.getInstance();
//     final cartJson = prefs.getString('cart_items');
//     if (cartJson != null) {
//       try {
//         final List decoded = jsonDecode(cartJson);
//         _items.clear();
//         _items.addAll(decoded.map((e) => Product.fromJson(e)).toList());
//         notifyListeners();
//       } catch (e) {
//         debugPrint('Lỗi khi load giỏ hàng: $e');
//       }
//     }
//   }

//   Future<void> syncCartToFirebase() async {
//     final user = FirebaseAuth.instance.currentUser;
//     if (user == null) return;
//     final cartData = {
//       'items': _items.map((e) => e.toJson()).toList(),
//       'updatedAt': FieldValue.serverTimestamp(),
//     };
//     try {
//       await FirebaseFirestore.instance
//           .collection('carts')
//           .doc(user.uid)
//           .set(cartData, SetOptions(merge: true));
//     } catch (e) {
//       debugPrint('Lỗi khi đồng bộ Firebase: $e');
//     }
//   }

//   Future<String?> submitOrder() async {
//     final user = FirebaseAuth.instance.currentUser;
//     if (user == null ||
//         _items.isEmpty ||
//         _selectedAddress == null ||
//         paymentMethod == null) {
//       debugPrint('❌ Thiếu thông tin đơn hàng');
//       return null;
//     }

//     final distanceKm = calculateDistanceKm(
//       _selectedAddress?.lat ?? 0,
//       _selectedAddress?.lng ?? 0,
//       branchLat ?? 0,
//       branchLng ?? 0,
//     );
//     _shippingFee = calculateShippingFee(distanceKm);

//     final orderId = const Uuid().v4();
//     final orderData = {
//       'orderId': orderId,
//       'userId': user.uid,
//       'items': _items.map((e) => e.toJson()).toList(),
//       'address': _selectedAddress?.fullAddress,
//       'receiverName': _selectedAddress?.receiverName,
//       'receiverPhone': _selectedAddress?.phone,
//       'paymentMethod': paymentMethod,
//       'branch': branchLabel,
//       'shippingFee': _shippingFee,
//       'distanceKm': double.parse(distanceKm.toStringAsFixed(2)),
//       'estimatedDelivery': estimatedDelivery,
//       'discountCode': discountCode,
//       'discountPercent': _discountPercent,
//       'subtotal': subtotal,
//       'tax': tax,
//       'finalTotal': finalTotal,
//       'createdAt': FieldValue.serverTimestamp(),
//       'status': 'pending',
//       'note': orderNote,
//       'location': {'lat': _selectedAddress?.lat, 'lng': _selectedAddress?.lng},
//     };

//     try {
//       await FirebaseFirestore.instance
//           .collection('orders')
//           .doc(orderId)
//           .set(orderData);
//       clearCart();
//       saveAddresses(); // 👉 đảm bảo địa chỉ vẫn được lưu
//       debugPrint('✅ Đã lưu đơn hàng: $orderId');
//       return orderId;
//     } catch (e) {
//       debugPrint('❌ Lỗi khi lưu đơn hàng: $e');
//       return null;
//     }
//   }

//   Future<void> cancelOrder(String orderId) async {
//     try {
//       final snapshot = await FirebaseFirestore.instance
//           .collection('orders')
//           .where('orderId', isEqualTo: orderId)
//           .get();

//       for (var doc in snapshot.docs) {
//         await doc.reference.update({'status': 'cancelled'});
//       }

//       debugPrint('✅ Đã hủy đơn hàng $orderId');
//     } catch (e) {
//       debugPrint('❌ Lỗi khi hủy đơn hàng: $e');
//     }
//   }

//   Future<List<Map<String, dynamic>>> fetchOrderHistory() async {
//     final user = FirebaseAuth.instance.currentUser;
//     if (user == null) return [];

//     try {
//       final snapshot = await FirebaseFirestore.instance
//           .collection('orders')
//           .where('userId', isEqualTo: user.uid)
//           .orderBy('createdAt', descending: true)
//           .get();

//       return snapshot.docs.map((doc) => doc.data()).toList();
//     } catch (e) {
//       debugPrint('❌ Lỗi khi tải lịch sử đơn hàng: $e');
//       return [];
//     }
//   }
// }
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';
import '../models/product.dart';

class UserAddress {
  final String id;
  String receiverName;
  String phone;
  String fullAddress;
  double? lat;
  double? lng;

  UserAddress({
    required this.id,
    required this.receiverName,
    required this.phone,
    required this.fullAddress,
    this.lat,
    this.lng,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'receiverName': receiverName,
    'phone': phone,
    'fullAddress': fullAddress,
    'lat': lat,
    'lng': lng,
  };

  factory UserAddress.fromJson(Map<String, dynamic> json) => UserAddress(
    id: json['id'],
    receiverName: json['receiverName'],
    phone: json['phone'],
    fullAddress: json['fullAddress'],
    lat: (json['lat'] as num?)?.toDouble(),
    lng: (json['lng'] as num?)?.toDouble(),
  );
}

class CartProvider extends ChangeNotifier {
  final List<Product> _items = [];
  List<UserAddress> _addresses = [];
  UserAddress? _selectedAddress;

  // chọn sản phẩm để thanh toán
  final Set<String> _selectedItemIds = {};

  String? paymentMethod = 'COD';
  double _discountPercent = 0.0;
  String? discountCode;
  String? branchLabel;
  double? branchLat;
  double? branchLng;
  String? estimatedDelivery;
  double _shippingFee = 0.0;
  String? orderNote;

  List<Product> get items => _items;
  int get totalItems => _items.fold(0, (sum, item) => sum + item.quantity);

  // sản phẩm đã chọn
  Set<String> get selectedItemIds => _selectedItemIds;
  List<Product> get selectedItems =>
      _items.where((item) => _selectedItemIds.contains(item.id)).toList();

  double get discountPercent => _discountPercent;
  String? get selectedBranch => branchLabel;
  String? get deliveryTime => estimatedDelivery;
  List<UserAddress> get addresses => _addresses;
  UserAddress? get selectedAddress => _selectedAddress;

  double get subtotal => selectedItems.fold(
    0,
    (sum, item) => sum + (item.discountPrice ?? item.price) * item.quantity,
  );

  double get tax => subtotal * 0.10; // Thuế 10%

  double get totalPrice => subtotal * (1 - _discountPercent);

  double get shippingFee {
    if (_shippingFee > 0) return _shippingFee;
    if (_selectedAddress?.lat == null ||
        _selectedAddress?.lng == null ||
        branchLat == null ||
        branchLng == null) {
      return 0;
    }
    final distance = calculateDistanceKm(
      _selectedAddress!.lat!,
      _selectedAddress!.lng!,
      branchLat!,
      branchLng!,
    );
    return calculateShippingFee(distance);
  }

  double get finalTotal => totalPrice + shippingFee + tax;

  CartProvider() {
    loadCart();
    loadAddresses();
  }

  // chọn sản phẩm
  void toggleSelectItem(String id) {
    if (_selectedItemIds.contains(id)) {
      _selectedItemIds.remove(id);
    } else {
      _selectedItemIds.add(id);
    }
    notifyListeners();
  }

  void setNote(String value) {
    orderNote = value;
    notifyListeners();
  }

  // quản lý địa chỉ
  void addAddress(UserAddress address) {
    _addresses.add(address);
    _selectedAddress = address;
    saveAddresses();
    notifyListeners();
  }

  void updateAddress(String id, UserAddress newAddress) {
    final index = _addresses.indexWhere((a) => a.id == id);
    if (index != -1) {
      _addresses[index] = newAddress;
      if (_selectedAddress?.id == id) {
        _selectedAddress = newAddress;
      }
      saveAddresses();
      notifyListeners();
    }
  }

  void deleteAddress(String id) {
    _addresses.removeWhere((a) => a.id == id);
    if (_selectedAddress?.id == id) {
      _selectedAddress = _addresses.isNotEmpty ? _addresses.first : null;
    }
    saveAddresses();
    notifyListeners();
  }

  void selectAddress(String id) {
    _selectedAddress = _addresses.firstWhere((a) => a.id == id);
    notifyListeners();
  }

  Future<void> saveAddresses() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = _addresses.map((e) => e.toJson()).toList();
    await prefs.setString('user_addresses', jsonEncode(jsonList));
  }

  Future<void> loadAddresses() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('user_addresses');
    if (jsonString != null) {
      try {
        final List decoded = jsonDecode(jsonString);
        _addresses = decoded.map((e) => UserAddress.fromJson(e)).toList();
        if (_addresses.isNotEmpty) {
          _selectedAddress = _addresses.first;
        }
        notifyListeners();
      } catch (e) {
        debugPrint('Lỗi khi load địa chỉ: $e');
      }
    }
  }

  void setPaymentMethod(String value) {
    paymentMethod = value;
    notifyListeners();
  }

  void setBranch(String label) {
    branchLabel = label;
    switch (label) {
      case 'Chi nhánh Quận 1':
        branchLat = 10.7769;
        branchLng = 106.7009;
        estimatedDelivery = 'Giao trong 1-2 ngày';
        break;
      case 'Chi nhánh Bình Thạnh':
        branchLat = 10.8031;
        branchLng = 106.7070;
        estimatedDelivery = 'Giao trong 2-3 ngày';
        break;
      case 'Chi nhánh Gò Vấp':
        branchLat = 10.8380;
        branchLng = 106.6647;
        estimatedDelivery = 'Giao trong 3-4 ngày';
        break;
      default:
        branchLat = null;
        branchLng = null;
        estimatedDelivery = 'Chưa xác định';
    }
    notifyListeners();
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

  double calculateShippingFee(double distanceKm) {
    if (distanceKm < 5) return 25000;
    if (distanceKm < 20) return 40000;
    if (distanceKm < 100) return 60000;
    return 80000;
  }

  // giỏ hàng
  void addToCart(Product product) {
    final index = _items.indexWhere((p) => p.id == product.id);
    if (index != -1) {
      _items[index].quantity += product.quantity;
    } else {
      _items.add(product);
    }
    saveCart();
    syncCartToFirebase();
    notifyListeners();
  }

  void removeFromCart(int index) {
    _items.removeAt(index);
    saveCart();
    syncCartToFirebase();
    notifyListeners();
  }

  void decreaseQuantity(int index) {
    if (_items[index].quantity > 1) {
      _items[index].quantity -= 1;
    } else {
      removeFromCart(index);
      return;
    }
    saveCart();
    syncCartToFirebase();
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    _selectedItemIds.clear();
    _discountPercent = 0.0;
    discountCode = null;
    saveCart();
    syncCartToFirebase();
    notifyListeners();
  }

  bool applyDiscountCode(String code) {
    if (code == 'GIAM10') {
      _discountPercent = 0.10;
      discountCode = code;
      notifyListeners();
      return true;
    }
    return false;
  }

  Future<void> saveCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartJson = jsonEncode(_items.map((e) => e.toJson()).toList());
    await prefs.setString('cart_items', cartJson);
  }

  Future<void> loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartJson = prefs.getString('cart_items');
    if (cartJson != null) {
      try {
        final List decoded = jsonDecode(cartJson);
        _items.clear();
        _items.addAll(decoded.map((e) => Product.fromJson(e)).toList());
        notifyListeners();
      } catch (e) {
        debugPrint('Lỗi khi load giỏ hàng: $e');
      }
    }
  }

  Future<void> syncCartToFirebase() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;
    final cartData = {
      'items': _items.map((e) => e.toJson()).toList(),
      'updatedAt': FieldValue.serverTimestamp(),
    };
    try {
      await FirebaseFirestore.instance
          .collection('carts')
          .doc(user.uid)
          .set(cartData, SetOptions(merge: true));
    } catch (e) {
      debugPrint('Lỗi khi đồng bộ Firebase: $e');
    }
  }

  Future<String?> submitOrder() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null ||
        selectedItems.isEmpty || // chỉ lấy sản phẩm đã chọn
        _selectedAddress == null ||
        paymentMethod == null) {
      debugPrint('❌ Thiếu thông tin đơn hàng');
      return null;
    }

    final distanceKm = calculateDistanceKm(
      _selectedAddress?.lat ?? 0,
      _selectedAddress?.lng ?? 0,
      branchLat ?? 0,
      branchLng ?? 0,
    );
    _shippingFee = calculateShippingFee(distanceKm);

    final orderId = const Uuid().v4();
    final orderData = {
      'orderId': orderId,
      'userId': user.uid,
      'items': selectedItems.map((e) => e.toJson()).toList(),
      'address': _selectedAddress?.fullAddress,
      'receiverName': _selectedAddress?.receiverName,
      'receiverPhone': _selectedAddress?.phone,
      'paymentMethod': paymentMethod,
      'branch': branchLabel,
      'shippingFee': _shippingFee,
      'distanceKm': double.parse(distanceKm.toStringAsFixed(2)),
      'estimatedDelivery': estimatedDelivery,
      'discountCode': discountCode,
      'discountPercent': _discountPercent,
      'subtotal': subtotal,
      'tax': tax,
      'finalTotal': finalTotal,
      'createdAt': FieldValue.serverTimestamp(),
      'status': 'paid',
      'note': orderNote,
      'location': {'lat': _selectedAddress?.lat, 'lng': _selectedAddress?.lng},
    };

    try {
      await FirebaseFirestore.instance
          .collection('orders')
          .doc(orderId)
          .set(orderData);
      _selectedItemIds.clear(); // clear lựa chọn sau khi đặt hàng
      debugPrint('✅ Đã lưu đơn hàng: $orderId');
      return orderId;
    } catch (e) {
      debugPrint('❌ Lỗi khi lưu đơn hàng: $e');
      return null;
    }
  }

  Future<void> cancelOrder(String orderId) async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('orders')
          .where('orderId', isEqualTo: orderId)
          .get();

      for (var doc in snapshot.docs) {
        await doc.reference.update({'status': 'cancelled'});
      }

      debugPrint('✅ Đã hủy đơn hàng $orderId');
    } catch (e) {
      debugPrint('❌ Lỗi khi hủy đơn hàng: $e');
    }
  }

  Future<List<Map<String, dynamic>>> fetchOrderHistory() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return [];

    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('orders')
          .where('userId', isEqualTo: user.uid)
          .orderBy('createdAt', descending: true)
          .get();

      return snapshot.docs.map((doc) => doc.data()).toList();
    } catch (e) {
      debugPrint('❌ Lỗi khi tải lịch sử đơn hàng: $e');
      return [];
    }
  }
}
