import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/product.dart';
import '../ProductDetailPage/product_detail_page.dart';

class SearchResultCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const SearchResultCard({super.key, required this.product});

  Widget build(BuildContext context) {
    final name = product['name']?.toString() ?? 'Không có tên';
    final image = product['image']?.toString() ?? '';
    final price = (product['discountPrice'] ?? product['price']) as num? ?? 0;
    final originalPrice = (product['originalPrice'] ?? price) as num? ?? price;
    final discountPercent = (originalPrice > price)
        ? ((originalPrice - price) / originalPrice * 100).round()
        : 0;
    final promotion = product['promotion'];
    final stock = product['stockQuantity'] ?? 0;
    final endTimeRaw = product['promotionEnd'];
    DateTime? endTime = endTimeRaw != null
        ? DateTime.tryParse(endTimeRaw.toString())
        : null;
    final now = DateTime.now();
    final isExpired = endTime != null && now.isAfter(endTime);

    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );

    return InkWell(
      onTap: () {
        final p = Product.fromMap(product);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ProductDetailPage(product: p)),
        );
      },
      child: SizedBox(
        height: 360,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 3,
          color: const Color(0xFFF5F5F5),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Ảnh sản phẩm
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AspectRatio(
                    aspectRatio: 16 / 11,
                    child: image.isNotEmpty && image.startsWith('http')
                        ? Image.network(
                            image,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                              color: Colors.grey[200],
                              alignment: Alignment.center,
                              child: const Icon(Icons.broken_image),
                            ),
                          )
                        : Image.asset('assets/default.jpg', fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 8),

                // Tên sản phẩm
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),

                // Nếu khuyến mãi còn hạn thì hiển thị giá giảm, ngược lại chỉ hiển thị giá gốc
                if (!isExpired && discountPercent > 0) ...[
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          currencyFormatter.format(originalPrice),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Flexible(
                        child: Text(
                          currencyFormatter.format(price),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Giảm $discountPercent%',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  if (endTime != null)
                    Text(
                      'Giảm đến: ${DateFormat('dd/MM/yyyy HH:mm').format(endTime)}',
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.orange,
                      ),
                    ),
                ] else ...[
                  // 👉 Nếu hết hạn khuyến mãi: chỉ hiện giá gốc
                  Text(
                    currencyFormatter.format(originalPrice),
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],

                const Spacer(),

                // Tồn kho
                Row(
                  children: [
                    const Icon(
                      Icons.inventory_2_outlined,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Tồn kho: $stock',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
