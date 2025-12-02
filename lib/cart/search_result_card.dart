import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SearchResultCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const SearchResultCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final name = product['name'] ?? '';
    final image = product['image'] ?? '';
    final price = product['price'] ?? 0;
    final originalPrice = product['originalPrice'] ?? price;
    final discountPercent = (originalPrice > price)
        ? ((originalPrice - price) / originalPrice * 100).round()
        : 0;
    final promotion = product['promotion'];
    final brand = product['brand'] ?? '';
    final category = product['category'] ?? '';
    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    image,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                if (discountPercent > 0)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        '-$discountPercent%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              brand,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              category,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                if (originalPrice > price)
                  Text(
                    currencyFormatter.format(originalPrice),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                const SizedBox(width: 6),
                Text(
                  currencyFormatter.format(price),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            if (promotion != null)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  promotion.toString(),
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
