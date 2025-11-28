import 'package:flutter/material.dart';
import '../product_data/product_data.dart';
import 'category_product_page.dart';

// Map chứa ảnh cho từng danh mục (đã bỏ Skincare)
final Map<String, String> categoryImages = {
  'Makeup': 'assets/makeup.jpg',
  'Haircare': 'assets/haircare.jpg',
  'Bodycare': 'assets/bodycare.jpg',
  'Fragrance': 'assets/fragrance.jpg',
  'Tools': 'assets/tools.jpg',
  'Khác': 'assets/other.jpg',
};

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({super.key});

  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  int selectedCategoryIndex = 0;

  List<Map<String, dynamic>> getProductsByCategory(String category) {
    return productList
        .where((product) => product['category'] == category)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final categories = categoryImages.entries.toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            ' Danh mục sản phẩm',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final label = categories[index].key;
                final imagePath = categories[index].value;
                final isSelected = selectedCategoryIndex == index;

                return InkWell(
                  borderRadius: BorderRadius.circular(16),
                  splashColor: Colors.pink.withOpacity(0.3),
                  highlightColor: Colors.pink.withOpacity(0.1),
                  onTap: () {
                    setState(() {
                      selectedCategoryIndex = index;
                    });

                    final filteredProducts = getProductsByCategory(label);

                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => CategoryProductPage(
                          category: label,
                          products: filteredProducts,
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
                            imagePath,
                            height: 150,
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
                                  Colors.black.withOpacity(0.4), // nhẹ hơn
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
                            child: Center(
                              child: Text(
                                label,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15, // tăng size
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
