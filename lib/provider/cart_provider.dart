import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

import '../models/product.dart';
import '../models/user_address.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _items = [];
  List<UserAddress> _addresses = [];
  UserAddress? _selectedAddress;

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

  // Getters
  List<Product> get items => _items;
  int get totalItems => _items.fold(0, (sum, item) => sum + item.quantity);
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

  double get tax => subtotal * 0.10;

  double get totalPrice => subtotal * (1 - _discountPercent);
  double get shippingFee {
    // Nếu chưa chọn chi nhánh hoặc chưa có địa chỉ → không tính phí
    if (_selectedAddress == null || branchLat == null || branchLng == null) {
      return 0.0;
    }

    // Nếu có tọa độ đầy đủ → tính theo khoảng cách
    if (_selectedAddress!.lat != null && _selectedAddress!.lng != null) {
      final distance = calculateDistanceKm(
        _selectedAddress!.lat!,
        _selectedAddress!.lng!,
        branchLat!,
        branchLng!,
      );
      return calculateShippingFee(distance);
    }

    // Nếu thiếu tọa độ → không tính được khoảng cách → không tính phí
    return 0.0;
  }

  double get finalTotal => totalPrice + shippingFee + tax;

  CartProvider() {
    loadCart();
    loadAddresses();
  }

  // Chọn sản phẩm
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

  // Quản lý địa chỉ
  void addAddress(UserAddress address) {
    _addresses.add(address);
    _selectedAddress = address;
    _shippingFee = 0;
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
      _shippingFee = 0;
      saveAddresses();
      notifyListeners();
    }
  }

  void deleteAddress(String id) {
    _addresses.removeWhere((a) => a.id == id);
    if (_selectedAddress?.id == id) {
      _selectedAddress = _addresses.isNotEmpty ? _addresses.first : null;
    }
    _shippingFee = 0;
    saveAddresses();
    notifyListeners();
  }

  void selectAddress(String id) {
    _selectedAddress = _addresses.firstWhere((a) => a.id == id);
    _shippingFee = 0;
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
        _addresses = decoded
            .map((e) => UserAddress.fromJson(e as Map<String, dynamic>))
            .toList();
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
    _shippingFee = 0;
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

  // Giỏ hàng
  void addToCart(Product product) {
    final index = _items.indexWhere((p) => p.id == product.id);
    if (index != -1) {
      if (_items[index].quantity < _items[index].stockQuantity) {
        _items[index].quantity += 1;
      }
    } else {
      _items.add(product.copyWith(quantity: 1));
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

  double calculateShippingFeeByAddress(UserAddress address) {
    final parts = address.fullAddress.split(',');
    String province = parts.length >= 4 ? parts[3].trim() : '';
    String district = parts.length >= 3 ? parts[2].trim() : '';
    String ward = parts.length >= 2 ? parts[1].trim() : '';

    if (province.contains('Hồ Chí Minh')) {
      if (district.contains('Quận 1')) {
        if (ward.contains('Bến Nghé')) return 18000.0;
        if (ward.contains('Tân Định')) return 22000.0;
        return 20000.0;
      }
      if (district.contains('Bình Thạnh')) return 25000.0;
      if (district.contains('Gò Vấp')) return 30000.0;
      return 40000.0;
    }
    return 50000.0; // ngoài TP.HCM
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
      debugPrint('❌ Lỗi khi đồng bộ Firebase: $e');
    }
  }

  void removeOrderedItems() {
    // Xoá các sản phẩm đã chọn khỏi giỏ
    _items.removeWhere((item) => _selectedItemIds.contains(item.id));

    // Reset lựa chọn sau khi xoá
    _selectedItemIds.clear();

    saveCart();
    syncCartToFirebase();
    notifyListeners();
  }

  Future<String?> submitOrder() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null ||
        selectedItems.isEmpty ||
        _selectedAddress == null ||
        paymentMethod == null) {
      debugPrint('❌ Thiếu thông tin đơn hàng');
      return null;
    }

    if (_selectedAddress?.lat == null ||
        _selectedAddress?.lng == null ||
        branchLat == null ||
        branchLng == null) {
      debugPrint('❌ Thiếu tọa độ để tính phí vận chuyển');
      return null;
    }

    final distanceKm = calculateDistanceKm(
      _selectedAddress!.lat!,
      _selectedAddress!.lng!,
      branchLat!,
      branchLng!,
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
      'status': 'pending',
      'note': orderNote,
      'location': {'lat': _selectedAddress?.lat, 'lng': _selectedAddress?.lng},
    };

    try {
      await FirebaseFirestore.instance
          .collection('orders')
          .doc(orderId)
          .set(orderData);

      // xoá sản phẩm đã đặt khỏi giỏ
      removeOrderedItems();

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
