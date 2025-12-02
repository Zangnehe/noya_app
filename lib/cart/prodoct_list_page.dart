// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class ProductListPage extends StatefulWidget {
//   final String categoryName;

//   const ProductListPage({super.key, required this.categoryName});

//   @override
//   State<ProductListPage> createState() => _ProductListPageState();
// }

// class _ProductListPageState extends State<ProductListPage> {
//   String _selectedFilter = 'Mặc định';
//   final TextEditingController _searchController = TextEditingController();
//   bool _onlyPromotion = false;

//   final List<String> filters = [
//     'Mặc định',
//     'Giá tăng dần',
//     'Giá giảm dần',
//     'Bán chạy',
//   ];

//   final List<Map<String, dynamic>> products = [
//     {
//       'name': 'Toner D',
//       'image': 'assets/toner.jpg',
//       'price': 110000,
//       'originalPrice': 110000,
//       'sold': 0,
//       'promotion': '',
//       'category': 'Skincare',
//     },
//     {
//       'name': 'Kem chống nắng E',
//       'image': 'assets/sunscreen.jpg',
//       'price': 135000,
//       'originalPrice': 136000,
//       'sold': 5,
//       'promotion': 'GIẢM 1K',
//       'category': 'Skincare',
//     },
//     {
//       'name': 'Mặt nạ F',
//       'image': 'assets/mask.jpg',
//       'price': 50000,
//       'originalPrice': 60000,
//       'sold': 12,
//       'promotion': 'GIẢM 10K',
//       'category': 'Skincare',
//     },
//   ];

//   List<Map<String, dynamic>> getFilteredProducts() {
//     List<Map<String, dynamic>> result = products
//         .where((p) => p['category'] == widget.categoryName)
//         .toList();

//     if (_searchController.text.isNotEmpty) {
//       result = result
//           .where(
//             (p) => p['name'].toString().toLowerCase().contains(
//               _searchController.text.toLowerCase(),
//             ),
//           )
//           .toList();
//     }

//     if (_onlyPromotion) {
//       result = result
//           .where(
//             (p) =>
//                 p['promotion'] != null && p['promotion'].toString().isNotEmpty,
//           )
//           .toList();
//     }

//     switch (_selectedFilter) {
//       case 'Giá tăng dần':
//         result.sort((a, b) => a['price'].compareTo(b['price']));
//         break;
//       case 'Giá giảm dần':
//         result.sort((a, b) => b['price'].compareTo(a['price']));
//         break;
//       case 'Bán chạy':
//         result.sort((a, b) => b['sold'].compareTo(a['sold']));
//         break;
//     }

//     return result;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final currencyFormatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: '₫',
//       decimalDigits: 0,
//     );
//     final productsToShow = getFilteredProducts();

//     return Scaffold(
//       appBar: AppBar(title: Text('Sản phẩm: ${widget.categoryName}')),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           children: [
//             const SizedBox(height: 12),
//             TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 hintText: 'Tìm sản phẩm...',
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               onChanged: (_) => setState(() {}),
//             ),
//             const SizedBox(height: 8),
//             Row(
//               children: [
//                 Checkbox(
//                   value: _onlyPromotion,
//                   onChanged: (value) => setState(() => _onlyPromotion = value!),
//                 ),
//                 const Expanded(
//                   child: Text(
//                     'Chỉ hiển thị sản phẩm có khuyến mãi',
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 1,
//                   ),
//                 ),
//                 Flexible(
//                   child: DropdownButton<String>(
//                     value: _selectedFilter,
//                     isExpanded: true,
//                     items: filters.map((filter) {
//                       return DropdownMenuItem(
//                         value: filter,
//                         child: Text(filter),
//                       );
//                     }).toList(),
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedFilter = value!;
//                       });
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 12),
//             Expanded(
//               child: GridView.builder(
//                 itemCount: productsToShow.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 0.75,
//                   crossAxisSpacing: 8,
//                   mainAxisSpacing: 8,
//                 ),
//                 itemBuilder: (context, index) {
//                   final product = productsToShow[index];
//                   final name = product['name'];
//                   final image = product['image'];
//                   final price = product['price'];
//                   final originalPrice = product['originalPrice'];
//                   final discountPercent = (originalPrice > price)
//                       ? ((originalPrice - price) / originalPrice * 100).round()
//                       : 0;
//                   final sold = product['sold'];
//                   final promotion = product['promotion'];

//                   return Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     elevation: 3,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 6,
//                         vertical: 6,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Stack(
//                             children: [
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(8),
//                                 child: Image.asset(
//                                   image,
//                                   height: 120,
//                                   width: double.infinity,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               if (discountPercent > 0)
//                                 Positioned(
//                                   top: 8,
//                                   right: 8,
//                                   child: Container(
//                                     padding: const EdgeInsets.symmetric(
//                                       horizontal: 6,
//                                       vertical: 2,
//                                     ),
//                                     decoration: BoxDecoration(
//                                       color: Colors.redAccent,
//                                       borderRadius: BorderRadius.circular(6),
//                                     ),
//                                     child: Text(
//                                       '-$discountPercent%',
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             name,
//                             style: const TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                             ),
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           const SizedBox(height: 4),
//                           if (originalPrice > price)
//                             Row(
//                               children: [
//                                 Text(
//                                   currencyFormatter.format(originalPrice),
//                                   style: const TextStyle(
//                                     fontSize: 12,
//                                     color: Colors.grey,
//                                     decoration: TextDecoration.lineThrough,
//                                   ),
//                                 ),
//                                 const SizedBox(width: 6),
//                                 Text(
//                                   currencyFormatter.format(price),
//                                   style: const TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.pink,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           else
//                             Text(
//                               currencyFormatter.format(price),
//                               style: const TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.pink,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           const SizedBox(height: 4),
//                           Row(
//                             children: [
//                               const Icon(
//                                 Icons.shopping_cart_outlined,
//                                 size: 14,
//                                 color: Colors.grey,
//                               ),
//                               const SizedBox(width: 4),
//                               Text(
//                                 'Đã bán: $sold',
//                                 style: const TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           if (promotion != null && promotion.isNotEmpty)
//                             Container(
//                               margin: const EdgeInsets.only(top: 4),
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 6,
//                                 vertical: 2,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: Colors.orange[100],
//                                 borderRadius: BorderRadius.circular(6),
//                               ),
//                               child: Text(
//                                 promotion,
//                                 style: const TextStyle(
//                                   fontSize: 11,
//                                   color: Colors.deepOrange,
//                                 ),
//                               ),
//                             ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductListPage extends StatefulWidget {
  final String categoryName;

  const ProductListPage({super.key, required this.categoryName});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  String _selectedFilter = 'Mặc định';
  final TextEditingController _searchController = TextEditingController();
  bool _onlyPromotion = false;

  final List<String> filters = [
    'Mặc định',
    'Giá tăng dần',
    'Giá giảm dần',
    'Bán chạy',
  ];

  final List<Map<String, dynamic>> products = [
    {
      'name': 'Toner D',
      'image': 'assets/toner.jpg',
      'price': 110000,
      'originalPrice': 110000,
      'sold': 0,
      'promotion': '',
      'category': 'Skincare',
    },
    {
      'name': 'Kem chống nắng E',
      'image': 'assets/sunscreen.jpg',
      'price': 135000,
      'originalPrice': 136000,
      'sold': 5,
      'promotion': 'GIẢM 1K',
      'category': 'Skincare',
    },
    {
      'name': 'Mặt nạ F',
      'image': 'assets/mask.jpg',
      'price': 50000,
      'originalPrice': 60000,
      'sold': 12,
      'promotion': 'GIẢM 10K',
      'category': 'Skincare',
    },
  ];

  List<Map<String, dynamic>> getFilteredProducts() {
    List<Map<String, dynamic>> result = products
        .where((p) => p['category'] == widget.categoryName)
        .toList();

    if (_searchController.text.isNotEmpty) {
      result = result
          .where(
            (p) => p['name'].toString().toLowerCase().contains(
              _searchController.text.toLowerCase(),
            ),
          )
          .toList();
    }

    if (_onlyPromotion) {
      result = result
          .where(
            (p) =>
                p['promotion'] != null && p['promotion'].toString().isNotEmpty,
          )
          .toList();
    }

    switch (_selectedFilter) {
      case 'Giá tăng dần':
        result.sort((a, b) => a['price'].compareTo(b['price']));
        break;
      case 'Giá giảm dần':
        result.sort((a, b) => b['price'].compareTo(a['price']));
        break;
      case 'Bán chạy':
        result.sort((a, b) => b['sold'].compareTo(a['sold']));
        break;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );
    final productsToShow = getFilteredProducts();

    return Scaffold(
      appBar: AppBar(title: Text('Sản phẩm: ${widget.categoryName}')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 12),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Tìm sản phẩm...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: _onlyPromotion,
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
            Expanded(
              child: GridView.builder(
                itemCount: productsToShow.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  final product = productsToShow[index];
                  final name = product['name'];
                  final image = product['image'];
                  final price = product['price'];
                  final originalPrice = product['originalPrice'];
                  final discountPercent = (originalPrice > price)
                      ? ((originalPrice - price) / originalPrice * 100).round()
                      : 0;
                  final sold = product['sold'];
                  final promotion = product['promotion'];

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 6,
                    shadowColor: Colors.pink.withOpacity(0.2),
                    child: InkWell(
                      onTap: () {
                        // TODO: Điều hướng đến chi tiết sản phẩm
                      },
                      borderRadius: BorderRadius.circular(16),
                      splashColor: Colors.pink.withOpacity(0.2),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
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
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4,
                                            offset: Offset(0, 2),
                                          ),
                                        ],
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
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            if (originalPrice > price)
                              Row(
                                children: [
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
                              )
                            else
                              Text(
                                currencyFormatter.format(price),
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 14,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Đã bán: $sold',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            if (promotion != null && promotion.isNotEmpty)
                              Container(
                                margin: const EdgeInsets.only(top: 4),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  promotion,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: Colors.deepOrange,
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
      ),
    );
  }
}
