import 'package:flutter/material.dart';
import '../product_data/product_data.dart';
import 'category_product_page.dart';

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({super.key});

  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Gom sản phẩm theo category
    final Map<String, List<Map<String, dynamic>>> grouped = {};
    for (var product in productList) {
      final category = product['category'] ?? 'Khác';
      grouped.putIfAbsent(category, () => []).add(product);
    }

    // Ảnh cho từng danh mục
    final Map<String, String> categoryImages = {
      'Skincare': 'assets/skincare.jpg',
      'Makeup': 'assets/makeup.jpg',
      'Haircare': 'assets/haircare.jpg',
      'Bodycare': 'assets/bodycare.jpg',
      'Fragrance': 'assets/fragrance.jpg',
      'Tools': 'assets/tools.jpg',
      'Khác': 'assets/other.jpg',
    };

    // Tạo danh sách categories
    final List<Map<String, dynamic>> categories = grouped.entries.map((entry) {
      return {
        'name': entry.key,
        'image': categoryImages[entry.key] ?? 'assets/other.jpg',
        'products': entry.value,
      };
    }).toList();

    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Danh mục sản phẩm',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final item = categories[index];
                final isSelected = selectedCategoryIndex == index;
                final productCount = (item['products'] as List).length;

                return InkWell(
                  borderRadius: BorderRadius.circular(16),
                  splashColor: Colors.pink.withOpacity(0.3),
                  highlightColor: Colors.pink.withOpacity(0.1),
                  onTap: () {
                    setState(() {
                      selectedCategoryIndex = index;
                    });

                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => CategoryProductPage(
                          category: item['name'] as String,
                          products:
                              item['products'] as List<Map<String, dynamic>>,
                        ),
                        transitionsBuilder: (_, animation, __, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                    width: screenWidth * 0.32,
                    margin: const EdgeInsets.only(right: 12),
                    transform: Matrix4.identity()
                      ..scale(isSelected ? 1.05 : 1.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: isSelected ? Colors.pink : Colors.transparent,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: isSelected
                              ? Colors.pink.withOpacity(0.4)
                              : Colors.black12,
                          blurRadius: isSelected ? 10 : 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            item['image'],
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.4),
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  item['name'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.w600,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black.withOpacity(0.8),
                                        offset: const Offset(0, 1),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  '$productCount sản phẩm',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
