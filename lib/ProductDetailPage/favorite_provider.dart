import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/product.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Product> _favorites = [];

  // Constructor: tự động load dữ liệu khi Provider khởi tạo
  FavoriteProvider() {
    loadFavorites();
  }

  // Getter: trả về bản sao để tránh lỗi unmodifiable
  List<Product> get favorites => List<Product>.from(_favorites);

  bool isFavorite(String productId) {
    return _favorites.any((p) => p.id == productId);
  }

  void addFavorite(Product product) {
    if (!isFavorite(product.id)) {
      _favorites.add(product);
      saveFavorites(); // lưu vào SharedPreferences
      syncToServer(); // đồng bộ server
      notifyListeners();
    }
  }

  void removeFavorite(String productId) {
    _favorites.removeWhere((p) => p.id == productId);
    saveFavorites();
    syncToServer();
    notifyListeners();
  }

  void toggleFavorite(Product product) {
    if (isFavorite(product.id)) {
      removeFavorite(product.id);
    } else {
      addFavorite(product);
    }
  }

  /// Lưu danh sách yêu thích vào SharedPreferences
  Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = jsonEncode(_favorites.map((p) => p.toJson()).toList());
    await prefs.setString('favorites', encoded);
  }

  /// Tải danh sách yêu thích từ SharedPreferences
  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString('favorites');
    if (raw != null) {
      final List decoded = jsonDecode(raw);
      _favorites.clear();
      _favorites.addAll(decoded.map((e) => Product.fromJson(e)));
      notifyListeners();
    }
  }

  /// Đồng bộ danh sách yêu thích lên server (placeholder)
  Future<void> syncToServer() async {
    // TODO: Gửi danh sách _favorites lên API backend
    // Ví dụ: await ApiService.syncFavorites(_favorites);
  }

  /// Lấy danh sách theo danh mục (wishlist nâng cao)
  List<Product> getByCategory(String category) {
    return _favorites.where((p) => p.category == category).toList();
  }

  /// Sắp xếp danh sách theo tiêu chí
  List<Product> getSorted(String sortType) {
    final sorted = List<Product>.from(_favorites);
    if (sortType == 'Giá thấp nhất') {
      sorted.sort((a, b) => a.price.compareTo(b.price));
    } else if (sortType == 'Giá cao nhất') {
      sorted.sort((a, b) => b.price.compareTo(a.price));
    } else if (sortType == 'Mới nhất') {
      sorted.sort((a, b) => b.id.compareTo(a.id));
    }
    return sorted;
  }
}
