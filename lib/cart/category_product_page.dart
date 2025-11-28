// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
// import '../models/product.dart';
// import '../ProductDetailPage/product_detail_page.dart';

// String formatCurrency(int amount) {
//   final formatter = NumberFormat.currency(
//     locale: 'vi_VN',
//     symbol: '₫',
//     decimalDigits: 0,
//   );
//   return formatter.format(amount);
// }

// class CategoryProductPage extends StatelessWidget {
//   final String category;
//   final List<Map<String, dynamic>> products;

//   const CategoryProductPage({
//     super.key,
//     required this.category,
//     required this.products,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final horizontalPadding = 16.0;
//     final crossSpacing = 12.0;
//     final itemWidth = (size.width - horizontalPadding * 2 - crossSpacing) / 2;
//     final itemHeight = itemWidth * 1.7;
//     final childAspectRatio = itemWidth / itemHeight;

//     final currencyFormatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: '₫',
//       decimalDigits: 0,
//     );

//     final productList = products.map((p) => Product.fromJson(p)).toList();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(category),
//         backgroundColor: const Color(0xFFBFAF9B),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: GridView.builder(
//           itemCount: productList.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: childAspectRatio,
//             crossAxisSpacing: crossSpacing,
//             mainAxisSpacing: 12,
//           ),
//           itemBuilder: (context, index) {
//             final product = productList[index];
//             final originalPrice = product.originalPrice ?? product.price;
//             final currentPrice = product.discountPrice ?? product.price;
//             final discountPercent =
//                 (originalPrice > currentPrice && originalPrice > 0)
//                 ? ((originalPrice - currentPrice) / originalPrice * 100).round()
//                 : 0;
//             final endTime =
//                 product.promotionEnd?.millisecondsSinceEpoch ??
//                 DateTime.now()
//                     .add(const Duration(hours: 2))
//                     .millisecondsSinceEpoch;

//             final noPromotion =
//                 !product.isDiscountActive &&
//                 product.promotionStart == null &&
//                 product.promotionEnd == null;

//             return InkWell(
//               borderRadius: BorderRadius.circular(12),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => ProductDetailPage(product: product),
//                   ),
//                 );
//               },
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 elevation: 3,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Stack(
//                           children: [
//                             AspectRatio(
//                               aspectRatio: 16 / 11,
//                               child: Image.network(
//                                 product.image,
//                                 fit: BoxFit.cover,
//                                 errorBuilder: (_, __, ___) => Container(
//                                   color: Colors.grey[200],
//                                   alignment: Alignment.center,
//                                   child: const Icon(Icons.broken_image),
//                                 ),
//                               ),
//                             ),
//                             if (!noPromotion && discountPercent > 0)
//                               Positioned(
//                                 top: 6,
//                                 right: 6,
//                                 child: _DiscountBadge(
//                                   discountPercent: discountPercent,
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 8),

//                       // Tên sản phẩm
//                       Text(
//                         product.name,
//                         style: const TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),

//                       const SizedBox(height: 6),

//                       if (noPromotion) ...[
//                         // Chỉ hiển thị giá gốc và số lượng
//                         Text(
//                           currencyFormatter.format(originalPrice),
//                           style: const TextStyle(
//                             fontSize: 14,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Row(
//                           children: [
//                             const Icon(
//                               Icons.inventory_2_outlined,
//                               size: 16,
//                               color: Colors.grey,
//                             ),
//                             const SizedBox(width: 4),
//                             Expanded(
//                               child: Text(
//                                 'Còn ${product.stockQuantity} sp',
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: const TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ] else ...[
//                         // Hiển thị đầy đủ khi có khuyến mãi
//                         if (product.promotion != null)
//                           _PromotionBadge(text: product.promotion!),
//                         const SizedBox(height: 6),
//                         Row(
//                           children: [
//                             Flexible(
//                               child: Text(
//                                 currencyFormatter.format(originalPrice),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: const TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.grey,
//                                   decoration: TextDecoration.lineThrough,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 6),
//                             Flexible(
//                               child: Text(
//                                 currencyFormatter.format(currentPrice),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.pink,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 4),
//                           child: Text(
//                             'Giảm $discountPercent% so với giá gốc',
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             style: const TextStyle(
//                               fontSize: 12,
//                               color: Colors.green,
//                               fontStyle: FontStyle.italic,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         CountdownTimer(
//                           endTime: endTime,
//                           textStyle: const TextStyle(
//                             fontSize: 12,
//                             color: Colors.red,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Row(
//                           children: [
//                             const Icon(
//                               Icons.inventory_2_outlined,
//                               size: 16,
//                               color: Colors.grey,
//                             ),
//                             const SizedBox(width: 4),
//                             Expanded(
//                               child: Text(
//                                 'Còn ${product.stockQuantity} sp',
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: const TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class _DiscountBadge extends StatelessWidget {
//   final int discountPercent;
//   const _DiscountBadge({required this.discountPercent});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
//       decoration: BoxDecoration(
//         color: Colors.redAccent,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       child: Text(
//         '-$discountPercent%',
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 11,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }

// class _PromotionBadge extends StatelessWidget {
//   final String text;
//   const _PromotionBadge({required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(maxHeight: 22),
//       padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//       decoration: BoxDecoration(
//         color: Colors.orange[100],
//         borderRadius: BorderRadius.circular(6),
//       ),
//       child: Text(
//         text,
//         maxLines: 1,
//         overflow: TextOverflow.ellipsis,
//         style: const TextStyle(
//           fontSize: 11,
//           color: Colors.deepOrange,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import '../models/product.dart';
import '../ProductDetailPage/product_detail_page.dart';
import '../models/product.dart';

String formatCurrency(double amount) {
  final formatter = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: '₫',
    decimalDigits: 0,
  );
  return formatter.format(amount);
}

class CategoryProductPage extends StatefulWidget {
  final String category;
  final List<Map<String, dynamic>> products;

  const CategoryProductPage({
    super.key,
    required this.category,
    required this.products,
  });

  @override
  State<CategoryProductPage> createState() => _CategoryProductPageState();
}

class _CategoryProductPageState extends State<CategoryProductPage> {
  String _selectedFilter = 'Mặc định';
  final TextEditingController _searchController = TextEditingController();
  bool _onlyPromotion = false;

  final List<String> filters = [
    'Mặc định',
    'Giá tăng dần',
    'Giá giảm dần',
    'Tồn kho nhiều',
  ];

  List<Product> getFilteredProducts() {
    List<Product> result = widget.products
        .map((p) => Product.fromJson(p))
        .toList();

    // Tìm kiếm theo tên
    if (_searchController.text.isNotEmpty) {
      result = result
          .where(
            (p) => p.name.toLowerCase().contains(
              _searchController.text.toLowerCase(),
            ),
          )
          .toList();
    }

    // Chỉ hiển thị sản phẩm có khuyến mãi
    if (_onlyPromotion) {
      result = result
          .where((p) => p.promotion != null && p.promotion!.isNotEmpty)
          .toList();
    }

    // Bộ lọc sắp xếp
    switch (_selectedFilter) {
      case 'Giá tăng dần':
        result.sort(
          (a, b) => (a.discountPrice ?? a.price).compareTo(
            b.discountPrice ?? b.price,
          ),
        );
        break;
      case 'Giá giảm dần':
        result.sort(
          (a, b) => (b.discountPrice ?? b.price).compareTo(
            a.discountPrice ?? a.price,
          ),
        );
        break;
      case 'Tồn kho nhiều':
        result.sort((a, b) => b.stockQuantity.compareTo(a.stockQuantity));
        break;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final horizontalPadding = 16.0;
    final crossSpacing = 12.0;
    final itemWidth = (size.width - horizontalPadding * 2 - crossSpacing) / 2;
    final itemHeight = itemWidth * 1.7;
    final childAspectRatio = itemWidth / itemHeight;

    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );

    final productList = getFilteredProducts();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
        backgroundColor: const Color(0xFFBFAF9B),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 12),
            // Ô tìm kiếm đẹp hơn
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Tìm sản phẩm...',
                prefixIcon: const Icon(Icons.search, color: Color(0xFFBFAF9B)),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.pink.shade100),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFBFAF9B), width: 1.5),
                ),
              ),
              onChanged: (_) => setState(() {}),
            ),

            const SizedBox(height: 8),
            // Bộ lọc đẹp hơn
            Row(
              children: [
                Checkbox(
                  value: _onlyPromotion,
                  activeColor: Color(0xFFBFAF9B), // đồng bộ màu
                  onChanged: (value) => setState(() => _onlyPromotion = value!),
                ),
                const Expanded(
                  child: Text(
                    'Chỉ hiển thị sản phẩm có khuyến mãi',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Flexible(
                  child: DropdownButton<String>(
                    value: _selectedFilter,
                    isExpanded: true,
                    dropdownColor: Colors.grey[100], // đồng bộ màu
                    items: filters.map((filter) {
                      return DropdownMenuItem(
                        value: filter,
                        child: Text(filter),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedFilter = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Danh sách sản phẩm
            Expanded(
              child: GridView.builder(
                itemCount: productList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: childAspectRatio,
                  crossAxisSpacing: crossSpacing,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  final product = productList[index];
                  final originalPrice = product.originalPrice ?? product.price;
                  final currentPrice = product.discountPrice ?? product.price;
                  final discountPercent =
                      (originalPrice > currentPrice && originalPrice > 0)
                      ? ((originalPrice - currentPrice) / originalPrice * 100)
                            .round()
                      : 0;
                  final endTime =
                      product.promotionEnd?.millisecondsSinceEpoch ??
                      DateTime.now()
                          .add(const Duration(hours: 2))
                          .millisecondsSinceEpoch;

                  final noPromotion =
                      !product.isDiscountActive &&
                      product.promotionStart == null &&
                      product.promotionEnd == null;

                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: Colors.pink.withOpacity(
                      0.2,
                    ), // hiệu ứng click đồng bộ màu
                    highlightColor: Colors.pink.withOpacity(0.1),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailPage(product: product),
                        ),
                      );
                    },
                    child: ProductCard(
                      product: product,
                      originalPrice: originalPrice,
                      currentPrice: currentPrice,
                      discountPercent: discountPercent,
                      endTime: endTime,
                      noPromotion: noPromotion,
                      currencyFormatter: currencyFormatter,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DiscountBadge extends StatelessWidget {
  final int discountPercent;
  const _DiscountBadge({required this.discountPercent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
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
    );
  }
}

class _PromotionBadge extends StatelessWidget {
  final String text;
  const _PromotionBadge({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 22),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 11,
          color: Colors.deepOrange,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  final double originalPrice;
  final double currentPrice;
  final int discountPercent;
  final int endTime;
  final bool noPromotion;
  final NumberFormat currencyFormatter;

  const ProductCard({
    super.key,
    required this.product,
    required this.originalPrice,
    required this.currentPrice,
    required this.discountPercent,
    required this.endTime,
    required this.noPromotion,
    required this.currencyFormatter,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
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
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        color: Colors.grey[200],
                        alignment: Alignment.center,
                        child: const Icon(Icons.broken_image),
                      ),
                    ),
                  ),
                  if (!noPromotion && discountPercent > 0)
                    Positioned(
                      top: 6,
                      right: 6,
                      child: _DiscountBadge(discountPercent: discountPercent),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            if (noPromotion) ...[
              Text(
                currencyFormatter.format(originalPrice),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
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
                      'Còn ${product.stockQuantity} sp',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ] else ...[
              if (product.promotion != null)
                _PromotionBadge(text: product.promotion!),
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
                      currencyFormatter.format(currentPrice),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'Giảm $discountPercent% so với giá gốc',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              CountdownTimer(
                endTime: endTime,
                textStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
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
                      'Còn ${product.stockQuantity} sp',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
