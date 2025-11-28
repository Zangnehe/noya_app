import 'package:flutter/material.dart';
import '../product_data/product_data.dart';
import 'category_product_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, List<Map<String, dynamic>>> grouped = {};
    for (var product in productList) {
      final category = product['category'] ?? 'Khác';
      grouped.putIfAbsent(category, () => []).add(product);
    }

    final Map<String, String> categoryImages = {
      'Skincare': 'assets/skincare.jpg',
      'Makeup': 'assets/makeup.jpg',
      'Haircare': 'assets/haircare.jpg',
      'Bodycare': 'assets/bodycare.jpg',
      'Fragrance': 'assets/fragrance.jpg',
      'Tools': 'assets/tools.jpg',
      'Khác': 'assets/other.jpg',
    };

    final List<Map<String, dynamic>> categories = grouped.entries.map((entry) {
      return {
        'name': entry.key,
        'image': categoryImages[entry.key] ?? 'assets/other.jpg',
        'products': entry.value,
      };
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh mục sản phẩm'),
        backgroundColor: const Color(0xFFBFAF9B), // đồng bộ màu AppBar
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 400),
                  pageBuilder: (_, __, ___) => CategoryProductPage(
                    category: item['name'] as String,
                    products: item['products'] as List<Map<String, dynamic>>,
                  ),
                  transitionsBuilder: (_, animation, __, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                ),
              );
            },
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 1, end: 1),
              duration: const Duration(milliseconds: 300),
              builder: (context, scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(item['image']),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        item['name'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              blurRadius: 4,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
