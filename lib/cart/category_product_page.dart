// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'product_detail_page.dart'; // 👉 Màn hình chi tiết sản phẩm

// String formatCurrency(int amount) {
//   final formatter = NumberFormat.currency(
//     locale: 'vi_VN',
//     symbol: '₫',
//     decimalDigits: 0,
//   );
//   return formatter.format(amount);
// }

// class CategoryProductPage extends StatefulWidget {
//   final String category;
//   final List<Map<String, dynamic>> products;

//   const CategoryProductPage({
//     super.key,
//     required this.category,
//     required this.products,
//   });

//   @override
//   State<CategoryProductPage> createState() => _CategoryProductPageState();
// }

// class _CategoryProductPageState extends State<CategoryProductPage> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   double maxPrice = 2000000;
//   String sortOption = 'none';
//   final List<int> priceOptions = [250000, 450000, 650000, 850000];

//   List<Map<String, dynamic>> get filteredProducts {
//     List<Map<String, dynamic>> result = widget.products.where((product) {
//       return product['price'] <= maxPrice;
//     }).toList();

//     switch (sortOption) {
//       case 'alpha':
//         result.sort((a, b) => a['name'].compareTo(b['name']));
//         break;
//       case 'priceAsc':
//         result.sort((a, b) => a['price'].compareTo(b['price']));
//         break;
//       case 'priceDesc':
//         result.sort((a, b) => b['price'].compareTo(a['price']));
//         break;
//     }

//     return result;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Scaffold(
//           key: _scaffoldKey,
//           appBar: AppBar(
//             title: Text(widget.category),
//             backgroundColor: const Color(0xFFBFAF9B),
//           ),
//           drawer: Drawer(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 const DrawerHeader(
//                   decoration: BoxDecoration(color: Color(0xFFBFAF9B)),
//                   child: Text(
//                     'Bộ lọc & Sắp xếp',
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.price_change),
//                   title: const Text('Lọc theo giá'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     showFilterModal(context);
//                   },
//                 ),
//                 const Divider(),
//                 ListTile(
//                   leading: const Icon(Icons.sort_by_alpha),
//                   title: const Text('Sắp xếp theo tên A-Z'),
//                   onTap: () {
//                     setState(() => sortOption = 'alpha');
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.arrow_upward),
//                   title: const Text('Sắp xếp theo giá tăng'),
//                   onTap: () {
//                     setState(() => sortOption = 'priceAsc');
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.arrow_downward),
//                   title: const Text('Sắp xếp theo giá giảm'),
//                   onTap: () {
//                     setState(() => sortOption = 'priceDesc');
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             ),
//           ),
//           body: Column(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Giá ≤ ${formatCurrency(maxPrice.toInt())} | Sắp xếp: ${sortLabel()}',
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: GridView.builder(
//                   padding: const EdgeInsets.all(12),
//                   itemCount: filteredProducts.length,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 12,
//                     mainAxisSpacing: 12,
//                     childAspectRatio: 0.75,
//                   ),
//                   itemBuilder: (context, index) {
//                     final product = filteredProducts[index];
//                     final int sold = product['sold'] ?? 0;
//                     final int originalPrice =
//                         product['originalPrice'] ?? product['price'];

//                     return GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           PageRouteBuilder(
//                             pageBuilder: (_, __, ___) =>
//                                 ProductDetailPage(product: product),
//                             transitionsBuilder: (_, animation, __, child) {
//                               return FadeTransition(
//                                 opacity: animation,
//                                 child: child,
//                               );
//                             },
//                           ),
//                         );
//                       },
//                       child: AnimatedContainer(
//                         duration: const Duration(milliseconds: 300),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.05),
//                               blurRadius: 6,
//                               offset: const Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             ClipRRect(
//                               borderRadius: const BorderRadius.vertical(
//                                 top: Radius.circular(12),
//                               ),
//                               child: Image.network(
//                                 product['image'],
//                                 height: 120,
//                                 width: double.infinity,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     product['name'],
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text(
//                                     'Đã bán: $sold',
//                                     style: const TextStyle(color: Colors.grey),
//                                   ),
//                                   Row(
//                                     children: [
//                                       Text(
//                                         formatCurrency(originalPrice),
//                                         style: const TextStyle(
//                                           decoration:
//                                               TextDecoration.lineThrough,
//                                           color: Colors.grey,
//                                         ),
//                                       ),
//                                       const SizedBox(width: 8),
//                                       Text(
//                                         formatCurrency(product['price']),
//                                         style: const TextStyle(
//                                           color: Colors.red,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//         if (_scaffoldKey.currentState?.isDrawerOpen ?? false)
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
//             child: Container(color: Colors.black.withOpacity(0.1)),
//           ),
//       ],
//     );
//   }

//   String sortLabel() {
//     switch (sortOption) {
//       case 'alpha':
//         return 'Tên A-Z';
//       case 'priceAsc':
//         return 'Giá tăng';
//       case 'priceDesc':
//         return 'Giá giảm';
//       default:
//         return 'Không sắp xếp';
//     }
//   }

//   void showFilterModal(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.transparent,
//       isScrollControlled: true,
//       builder: (context) {
//         return BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
//           child: Container(
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//             ),
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children:
//                   priceOptions.map((price) {
//                     return ListTile(
//                       title: Text('≤ ${formatCurrency(price)}'),
//                       trailing: maxPrice == price
//                           ? const Icon(Icons.check)
//                           : null,
//                       onTap: () {
//                         setState(() {
//                           maxPrice = price.toDouble();
//                         });
//                         Navigator.pop(context);
//                       },
//                     );
//                   }).toList()..insert(
//                     0,
//                     ListTile(
//                       title: const Text('Tất cả mức giá'),
//                       trailing: maxPrice == 2000000
//                           ? const Icon(Icons.check)
//                           : null,
//                       onTap: () {
//                         setState(() {
//                           maxPrice = 2000000;
//                         });
//                         Navigator.pop(context);
//                       },
//                     ),
//                   ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'product_detail_page.dart';

String formatCurrency(int amount) {
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double maxPrice = 2000000;
  String sortOption = 'none';
  final List<int> priceOptions = [250000, 450000, 650000, 850000];

  void resetFilters() {
    setState(() {
      maxPrice = 2000000;
      sortOption = 'none';
    });
  }

  List<Map<String, dynamic>> get filteredProducts {
    List<Map<String, dynamic>> result = widget.products.where((product) {
      return product['price'] <= maxPrice;
    }).toList();

    switch (sortOption) {
      case 'alpha':
        result.sort((a, b) => a['name'].compareTo(b['name']));
        break;
      case 'priceAsc':
        result.sort((a, b) => a['price'].compareTo(b['price']));
        break;
      case 'priceDesc':
        result.sort((a, b) => b['price'].compareTo(a['price']));
        break;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.category),
        backgroundColor: const Color(0xFFBFAF9B),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Đặt lại bộ lọc',
            onPressed: resetFilters,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFBFAF9B)),
              child: Text(
                'Bộ lọc & Sắp xếp',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.price_change),
              title: const Text('Lọc theo giá'),
              onTap: () {
                Navigator.pop(context);
                showFilterModal(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.sort_by_alpha),
              title: const Text('Sắp xếp theo tên A-Z'),
              onTap: () {
                setState(() => sortOption = 'alpha');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_upward),
              title: const Text('Sắp xếp theo giá tăng'),
              onTap: () {
                setState(() => sortOption = 'priceAsc');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_downward),
              title: const Text('Sắp xếp theo giá giảm'),
              onTap: () {
                setState(() => sortOption = 'priceDesc');
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.refresh),
              title: const Text('Đặt lại bộ lọc & sắp xếp'),
              onTap: () {
                resetFilters();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            alignment: Alignment.centerLeft,
            child: Text(
              'Giá ≤ ${formatCurrency(maxPrice.toInt())} | Sắp xếp: ${sortLabel()}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: filteredProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.72, // 👉 Giảm nhẹ để tránh tràn nội dung
              ),
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                final int sold = product['sold'] ?? 0;
                final int originalPrice =
                    product['originalPrice'] ?? product['price'];

                return InkWell(
                  splashColor: const Color(0xFFBFAF9B).withOpacity(0.2),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            ProductDetailPage(product: product),
                        transitionsBuilder: (_, animation, __, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                            child: Image.network(
                              product['image'],
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Đã bán: $sold',
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        formatCurrency(originalPrice),
                                        style: const TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        formatCurrency(product['price']),
                                        style: const TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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

  String sortLabel() {
    switch (sortOption) {
      case 'alpha':
        return 'Tên A-Z';
      case 'priceAsc':
        return 'Giá tăng';
      case 'priceDesc':
        return 'Giá giảm';
      default:
        return 'Không sắp xếp';
    }
  }

  void showFilterModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:
                  priceOptions.map((price) {
                    return ListTile(
                      title: Text('≤ ${formatCurrency(price)}'),
                      trailing: maxPrice == price
                          ? const Icon(Icons.check)
                          : null,
                      onTap: () {
                        setState(() {
                          maxPrice = price.toDouble();
                        });
                        Navigator.pop(context);
                      },
                    );
                  }).toList()..insert(
                    0,
                    ListTile(
                      title: const Text('Tất cả mức giá'),
                      trailing: maxPrice == 2000000
                          ? const Icon(Icons.check)
                          : null,
                      onTap: () {
                        setState(() {
                          maxPrice = maxPrice = 2000000;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ),
            ),
          ),
        );
      },
    );
  }
}
