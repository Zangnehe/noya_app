import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/product.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _favorites = [];

  FavoriteProvider() {
    loadFavorites();
  }

  /// ✅ Trả về số lượng sản phẩm yêu thích
  int get countFavorites => favorites.length;

  /// ✅ Trả về danh sách Product đã an toàn
  List<Product> get favorites {
    return _favorites
        .where((e) => e['product'] != null)
        .map((e) => Product.fromJson(e['product'] as Map<String, dynamic>))
        .toList();
  }

  /// ✅ Trả về dữ liệu gốc để lấy thêm thông tin (vd: addedAt)
  List<Map<String, dynamic>> get rawFavorites =>
      _favorites.where((e) => e is Map<String, dynamic>).toList();

  /// ✅ Kiểm tra sản phẩm có trong yêu thích chưa
  bool isFavorite(String productId) {
    return _favorites.any((p) => (p['product']?['id']) == productId);
  }

  /// ✅ Thêm sản phẩm vào yêu thích
  Future<void> addFavorite(Product product) async {
    if (!isFavorite(product.id)) {
      _favorites.add({
        'product': product.toJson(),
        'addedAt': DateTime.now().toIso8601String(),
      });
      await saveFavorites();
      notifyListeners();
    }
  }

  /// ✅ Xóa sản phẩm khỏi yêu thích
  Future<void> removeFavorite(String productId) async {
    _favorites.removeWhere((p) => (p['product']?['id']) == productId);
    await saveFavorites();
    notifyListeners();
  }

  /// ✅ Toggle trạng thái yêu thích
  Future<void> toggleFavorite(Product product) async {
    if (isFavorite(product.id)) {
      await removeFavorite(product.id);
    } else {
      await addFavorite(product);
    }
  }

  /// ✅ Lưu danh sách yêu thích vào SharedPreferences
  Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('favorites', jsonEncode(_favorites));
  }

  /// ✅ Load danh sách yêu thích từ SharedPreferences
  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString('favorites');

    if (raw == null) return;

    try {
      final List decoded = jsonDecode(raw);

      final List<Map<String, dynamic>> clean = [];
      for (final e in decoded) {
        if (e is Map<String, dynamic>) {
          if (e['product'] is Map<String, dynamic>) {
            // Format mới
            clean.add({
              'product': e['product'] as Map<String, dynamic>,
              'addedAt': (e['addedAt'] is String)
                  ? e['addedAt'] as String
                  : DateTime.now().toIso8601String(),
            });
          } else {
            // Format cũ: migrate
            if (e['id'] != null) {
              clean.add({
                'product': e,
                'addedAt': DateTime.now().toIso8601String(),
              });
            }
          }
        }
      }

      _favorites
        ..clear()
        ..addAll(clean);

      // Resave sau migrate để ổn định dữ liệu
      await saveFavorites();
      notifyListeners();
    } catch (e) {
      debugPrint('Lỗi khi load favorites: $e');
    }
  }

  /// ✅ Xóa toàn bộ danh sách yêu thích
  Future<void> resetFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('favorites');
    _favorites.clear();
    notifyListeners();
  }

  /// ✅ Ép migrate dữ liệu ngay cả khi đang dùng app
  Future<void> forceMigrate() async {
    await loadFavorites();
  }
}
