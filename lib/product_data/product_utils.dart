import 'product_data.dart';

/// Lấy giá hiện tại của sản phẩm
/// Nếu đang có khuyến mãi, trả về giá giảm
double getCurrentPrice(Map<String, dynamic> product) {
  final now = DateTime.now();

  try {
    final start = product['promotionStart'] != null
        ? DateTime.parse(product['promotionStart'])
        : DateTime.fromMillisecondsSinceEpoch(0);
    final end = product['promotionEnd'] != null
        ? DateTime.parse(product['promotionEnd'])
        : DateTime.fromMillisecondsSinceEpoch(0);

    if (product['isDiscountActive'] == true &&
        now.isAfter(start) &&
        now.isBefore(end)) {
      return (product['discountPrice'] ?? product['originalPrice']).toDouble();
    }
  } catch (_) {
    // Nếu parse lỗi thì trả về giá gốc
  }

  return (product['originalPrice'] ?? 0).toDouble();
}

/// Lọc sản phẩm theo nhiều điều kiện
List<Map<String, dynamic>> filterProducts({
  String? skinType,
  String? type,
  String? brand,
  double? maxPrice,
  String? timeOfUse,
}) {
  return productList.where((product) {
    // Loại da
    final tags = (product['skinTypeTags'] ?? []) as List;
    final matchesSkin = skinType == null || tags.contains(skinType);

    // Loại sản phẩm
    final matchesType = type == null || product['type'] == type;

    // Thương hiệu
    final matchesBrand = brand == null || product['brand'] == brand;

    // Giá tiền
    final currentPrice = getCurrentPrice(product);
    final matchesPrice = maxPrice == null || currentPrice <= maxPrice;

    // Thời điểm sử dụng (kiểm tra trong usage text)
    final usageText = (product['usage'] ?? '').toString().toLowerCase();
    final matchesTime = timeOfUse == null || usageText.contains(timeOfUse);

    return matchesSkin && matchesType && matchesBrand && matchesPrice && matchesTime;
  }).toList();
}
