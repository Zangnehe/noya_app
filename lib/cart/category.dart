import 'package:flutter/material.dart';
import '../product_data/product_data.dart';
import 'category_product_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 🔄 Nhóm sản phẩm theo category
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
      'Khác': 'assets/other.jpg', // thêm ảnh mặc định cho danh mục khác
    };

    final List<Map<String, dynamic>> categories = grouped.entries.map((entry) {
      return {
        'name': entry.key,
        'image': categoryImages[entry.key] ?? 'assets/other.jpg',
        'products': entry.value,
      };
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Danh mục sản phẩm')),
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
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(item['image']),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3),
                    BlendMode.darken,
                  ),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                item['name'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
