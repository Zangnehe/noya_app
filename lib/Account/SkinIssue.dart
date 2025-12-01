import '../models/product.dart'; // cần import để nhận diện class Product
import '../product_data/product_data.dart'; // chứa productListRaw

/// Định nghĩa tình trạng da
class SkinIssue {
  final String
  id; // định danh duy nhất (trùng với skinTypeTags/skinConcerns trong product_data)
  final String label; // tên hiển thị
  final String group; // nhóm phân loại (Loại da, Vấn đề, Sắc tố...)

  const SkinIssue({required this.id, required this.label, required this.group});
}

/// Danh sách tình trạng da (id phải khớp với dữ liệu trong product_data)
final List<SkinIssue> kSkinIssues = [
  SkinIssue(id: 'da dầu', label: 'Da dầu', group: 'Loại da'),
  SkinIssue(id: 'da khô', label: 'Da khô', group: 'Loại da'),
  SkinIssue(id: 'da hỗn hợp', label: 'Da hỗn hợp', group: 'Loại da'),
  SkinIssue(id: 'nhạy cảm', label: 'Nhạy cảm', group: 'Đặc tính'),
  SkinIssue(id: 'mụn', label: 'Mụn', group: 'Vấn đề'),
  SkinIssue(id: 'mụn đầu đen', label: 'Mụn đầu đen', group: 'Vấn đề'),
  SkinIssue(id: 'thâm mụn', label: 'Thâm mụn', group: 'Sắc tố'),
  SkinIssue(id: 'không đều màu', label: 'Không đều màu', group: 'Sắc tố'),
  SkinIssue(id: 'xỉn màu', label: 'Xỉn màu', group: 'Sắc tố'),
  SkinIssue(id: 'lão hóa sớm', label: 'Lão hóa sớm', group: 'Lão hóa'),
  SkinIssue(id: 'nếp nhăn nhỏ', label: 'Nếp nhăn nhỏ', group: 'Lão hóa'),
  SkinIssue(id: 'nếp nhăn sâu', label: 'Nếp nhăn sâu', group: 'Lão hóa'),
  SkinIssue(id: 'lỗ chân lông to', label: 'Lỗ chân lông to', group: 'Vấn đề'),
  SkinIssue(id: 'đỏ rát', label: 'Đỏ rát', group: 'Đặc tính'),
];

/// Hàm lấy danh sách sản phẩm gợi ý dựa trên tình trạng da và mức độ nghiêm trọng
List<Product> getRecommendedProductsForIssues(
  List<String> selectedIssueIds,
  double severity,
) {
  // Thứ tự ưu tiên nhóm tình trạng da
  const priorityOrder = ['Vấn đề', 'Sắc tố', 'Lão hóa', 'Loại da', 'Đặc tính'];

  // Lọc ra các issue đã chọn và sắp xếp theo thứ tự ưu tiên
  final chosenIssues =
      kSkinIssues.where((issue) => selectedIssueIds.contains(issue.id)).toList()
        ..sort(
          (a, b) => priorityOrder
              .indexOf(a.group)
              .compareTo(priorityOrder.indexOf(b.group)),
        );

  // Gom tất cả id từ các issue đã chọn
  final allIds = chosenIssues.map((issue) => issue.id).toSet();

  // Lọc productListRaw theo skinTypeTags hoặc skinConcerns
  var recommended = productListRaw.where((product) {
    final tags = product.skinTypeTags ?? [];
    final concerns = product.skinConcerns ?? [];
    return tags.any(allIds.contains) || concerns.any(allIds.contains);
  }).toList();

  // Nếu severity >= 4 thì ưu tiên sản phẩm mạnh (retinol/treatment)
  if (severity >= 4) {
    recommended.sort((a, b) {
      final aStrong =
          a.id.toLowerCase().contains('retinol') ||
          a.id.toLowerCase().contains('treatment');
      final bStrong =
          b.id.toLowerCase().contains('retinol') ||
          b.id.toLowerCase().contains('treatment');
      if (aStrong && !bStrong) return -1;
      if (!aStrong && bStrong) return 1;
      return 0;
    });
  }

  // Sắp xếp theo recommendationScore (cao trước)
  recommended.sort(
    (a, b) =>
        (b.recommendationScore ?? 0).compareTo(a.recommendationScore ?? 0),
  );

  return recommended;
}
