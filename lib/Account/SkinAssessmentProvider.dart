import 'package:flutter/material.dart';
import '../models/product.dart';
import 'SkinIssue.dart'; // chứa getRecommendedProductsForIssues

class SkinAssessmentProvider extends ChangeNotifier {
  /// Danh sách ID tình trạng da đã chọn
  List<String> selectedIds = [];

  /// Mức độ nghiêm trọng (mặc định = 3)
  double severity = 3;

  /// Ghi chú thêm từ người dùng
  String note = '';

  /// Danh sách sản phẩm gợi ý
  List<Product> recommendedProducts = [];

  /// Lưu kết quả đánh giá tình trạng da
  void saveAssessment({
    required List<String> ids,
    required double sev,
    required String desc,
  }) {
    selectedIds = ids;
    severity = sev;
    note = desc;

    // Cập nhật danh sách sản phẩm gợi ý
    recommendedProducts = getRecommendedProductsForIssues(
      selectedIds,
      severity,
    );

    notifyListeners();
  }

  /// Xóa kết quả đánh giá, reset về mặc định
  void clearAssessment() {
    selectedIds = [];
    severity = 3;
    note = '';
    recommendedProducts = [];
    notifyListeners();
  }

  /// Kiểm tra xem người dùng đã chọn tình trạng da chưa
  bool get hasSelection => selectedIds.isNotEmpty;

  /// Kiểm tra xem có sản phẩm gợi ý không
  bool get hasRecommendations => recommendedProducts.isNotEmpty;
}
