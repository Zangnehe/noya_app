import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';
import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailPage({super.key, required this.product});

  String formatCurrency(num amount) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );
    return formatter.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    final int sold = product['sold'] ?? 0;
    final double price = (product['discountPrice'] ?? product['price'])
        .toDouble();
    final double originalPrice = (product['originalPrice'] ?? product['price'])
        .toDouble();
    final bool hasDiscount = price < originalPrice;
    final int discountPercent = hasDiscount
        ? ((1 - price / originalPrice) * 100).round()
        : 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
        backgroundColor: const Color(0xFFBFAF9B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                product['image'],
                height: 180,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 100),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              product['name'],
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text('Đã bán: $sold', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              children: [
                if (hasDiscount)
                  Text(
                    formatCurrency(originalPrice),
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                if (hasDiscount) const SizedBox(width: 12),
                Text(
                  formatCurrency(price),
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            if (hasDiscount)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '-$discountPercent%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            const Spacer(),
            ElevatedButton.icon(
              icon: const Icon(Icons.add_shopping_cart),
              label: const Text('Thêm vào giỏ hàng'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBFAF9B),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {
                final productToAdd = Product(
                  id: product['id'],
                  name: product['name'],
                  brand: product['brand'],
                  type: product['type'],
                  price: originalPrice,
                  discountPrice: hasDiscount ? price : null,
                  image: product['image'],
                  promotion: product['promotion'],
                  quantity: 1,
                );

                Provider.of<CartProvider>(
                  context,
                  listen: false,
                ).addToCart(productToAdd);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Đã thêm vào giỏ hàng')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
