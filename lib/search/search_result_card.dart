import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/product.dart';
import '../ProductDetailPage/product_detail_page.dart';

class SearchResultCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const SearchResultCard({super.key, required this.product});

  @override
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
        height: 360, // ✅ tăng chiều cao card để tránh overflow
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      AspectRatio(
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
                            : Image.asset(
                                'assets/default.jpg',
                                fit: BoxFit.cover,
                              ),
                      ),
                      if (discountPercent > 0)
                        Positioned(
                          top: 6,
                          right: 6,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              '-$discountPercent%',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                if (promotion != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      promotion.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                const SizedBox(height: 6),
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
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        currencyFormatter.format(originalPrice),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    'Giảm $discountPercent%',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                if (endTime != null && !isExpired)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'Giảm đến: ${DateFormat('dd/MM/yyyy HH:mm').format(endTime)}',
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                const Spacer(), // ✅ đẩy tồn kho xuống cuối card
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
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
