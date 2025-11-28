// import 'package:flutter/material.dart';
// import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
// import '../ProductDetailPage/product_detail_page.dart';
// import '../models/product.dart';

// class NewProductsPage extends StatefulWidget {
//   final List<Map<String, dynamic>> productList;

//   const NewProductsPage({super.key, required this.productList});

//   @override
//   State<NewProductsPage> createState() => _NewProductsPageState();
// }

// class _NewProductsPageState extends State<NewProductsPage> {
//   String searchQuery = '';
//   String? selectedCategory;
//   String? selectedBrand;
//   String? selectedSkinType;
//   bool showDiscountOnly = false;

//   @override
//   Widget build(BuildContext context) {
//     final newProducts = widget.productList.reversed.toList();

//     // Tự động lấy từ khóa lọc từ dữ liệu
//     final categories = widget.productList
//         .map((p) => p['type']?.toString() ?? '')
//         .where((e) => e.isNotEmpty)
//         .toSet()
//         .toList();

//     final brands = widget.productList
//         .map((p) => p['brand']?.toString() ?? '')
//         .where((e) => e.isNotEmpty)
//         .toSet()
//         .toList();

//     final skinTypes = widget.productList
//         .map((p) => p['specs']?['Loại da phù hợp']?.toString() ?? '')
//         .where((e) => e.isNotEmpty)
//         .toSet()
//         .toList();

//     // Lọc sản phẩm
//     final filteredProducts = newProducts.where((product) {
//       final nameMatch =
//           product['name'].toString().toLowerCase().contains(
//             searchQuery.toLowerCase(),
//           ) ||
//           product['brand'].toString().toLowerCase().contains(
//             searchQuery.toLowerCase(),
//           );

//       final categoryMatch =
//           selectedCategory == null ||
//           product['type']?.toString().toLowerCase().contains(
//                 selectedCategory!.toLowerCase(),
//               ) ==
//               true;

//       final brandMatch =
//           selectedBrand == null ||
//           product['brand']?.toString().toLowerCase().contains(
//                 selectedBrand!.toLowerCase(),
//               ) ==
//               true;

//       final skinTypeSpec =
//           product['specs']?['Loại da phù hợp']?.toString().toLowerCase() ?? '';
//       final description =
//           product['description']?.toString().toLowerCase() ?? '';
//       final skinMatch =
//           selectedSkinType == null ||
//           skinTypeSpec.contains(selectedSkinType!.toLowerCase()) ||
//           description.contains(selectedSkinType!.toLowerCase());

//       final isDiscounted =
//           product['discountPrice'] != null &&
//           product['discountPrice'] <
//               (product['originalPrice'] ?? product['discountPrice']);

//       final discountMatch = !showDiscountOnly || isDiscounted;

//       return nameMatch &&
//           categoryMatch &&
//           brandMatch &&
//           skinMatch &&
//           discountMatch;
//     }).toList();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('🔍 Tìm kiếm sản phẩm'),
//         backgroundColor: const Color(0xFFBFAF9B),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.filter_alt),
//             onPressed: () async {
//               final result = await _showKeywordFilter(
//                 context,
//                 categories,
//                 brands,
//                 skinTypes,
//               );
//               if (result != null) {
//                 setState(() {
//                   selectedCategory = result['category'];
//                   selectedBrand = result['brand'];
//                   selectedSkinType = result['skinType'];
//                   showDiscountOnly = result['discountOnly'];
//                 });
//               }
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           // Thanh tìm kiếm đẹp hơn
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Nhập tên hoặc thương hiệu...',
//                 prefixIcon: const Icon(Icons.search, color: Color(0xFFBFAF9B)),
//                 filled: true,
//                 fillColor: Colors.grey[100],
//                 contentPadding: const EdgeInsets.symmetric(
//                   vertical: 0,
//                   horizontal: 16,
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: const BorderSide(color: Color(0xFFBFAF9B)),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: const BorderSide(
//                     color: Color(0xFFBFAF9B),
//                     width: 2,
//                   ),
//                 ),
//               ),
//               onChanged: (value) => setState(() => searchQuery = value),
//             ),
//           ),

//           const SizedBox(height: 8),

//           // Grid sản phẩm hoặc thông báo
//           Expanded(
//             child: filteredProducts.isEmpty
//                 ? const Center(
//                     child: Text(
//                       'Không có sản phẩm phù hợp 😢',
//                       style: TextStyle(fontSize: 16, color: Colors.redAccent),
//                     ),
//                   )
//                 : GridView.builder(
//                     padding: const EdgeInsets.all(12),
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           crossAxisSpacing: 12,
//                           mainAxisSpacing: 12,
//                           childAspectRatio: 0.65,
//                         ),
//                     itemCount: filteredProducts.length,
//                     itemBuilder: (context, index) {
//                       final product = filteredProducts[index];
//                       final originalPrice =
//                           product['originalPrice'] ?? product['discountPrice'];
//                       final discountPrice = product['discountPrice'];
//                       final discountPercent = (originalPrice > discountPrice)
//                           ? ((originalPrice - discountPrice) /
//                                     originalPrice *
//                                     100)
//                                 .round()
//                           : 0;

//                       int? endTime;
//                       if (product['promotionEnd'] != null) {
//                         endTime = DateTime.parse(
//                           product['promotionEnd'],
//                         ).millisecondsSinceEpoch;
//                       }

//                       return InkWell(
//                         onTap: () {
//                           final productObj = Product.fromJson(product);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (_) =>
//                                   ProductDetailPage(product: productObj),
//                             ),
//                           );
//                         },
//                         child: Card(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           elevation: 3,
//                           child: Padding(
//                             padding: const EdgeInsets.all(8),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ClipRRect(
//                                   borderRadius: BorderRadius.circular(8),
//                                   child: Image.network(
//                                     product['image'] ?? '',
//                                     height: 100,
//                                     width: double.infinity,
//                                     fit: BoxFit.cover,
//                                     errorBuilder: (_, __, ___) => const Icon(
//                                       Icons.broken_image,
//                                       size: 100,
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 6),
//                                 if (product['promotion'] != null)
//                                   Text(
//                                     product['promotion'],
//                                     style: const TextStyle(
//                                       fontSize: 11,
//                                       color: Colors.pink,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 Text(
//                                   product['name'] ?? '',
//                                   style: const TextStyle(
//                                     fontSize: 13,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                   maxLines: 2,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 Row(
//                                   children: [
//                                     if (discountPercent > 0)
//                                       Text(
//                                         '${originalPrice} ₫',
//                                         style: const TextStyle(
//                                           fontSize: 11,
//                                           color: Colors.grey,
//                                           decoration:
//                                               TextDecoration.lineThrough,
//                                         ),
//                                       ),
//                                     const SizedBox(width: 4),
//                                     Text(
//                                       '${discountPrice} ₫',
//                                       style: const TextStyle(
//                                         fontSize: 13,
//                                         color: Color(0xFFBFAF9B),
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 if (discountPercent > 0)
//                                   Text(
//                                     'Giảm $discountPercent%',
//                                     style: const TextStyle(
//                                       fontSize: 11,
//                                       color: Colors.green,
//                                     ),
//                                   ),
//                                 if (endTime != null)
//                                   CountdownTimer(
//                                     endTime: endTime,
//                                     textStyle: const TextStyle(
//                                       fontSize: 11,
//                                       color: Colors.red,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 Text(
//                                   'Còn ${product['stockQuantity']} sp',
//                                   style: const TextStyle(
//                                     fontSize: 11,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<Map<String, dynamic>?> _showKeywordFilter(
//     BuildContext context,
//     List<String> categories,
//     List<String> brands,
//     List<String> skinTypes,
//   ) async {
//     return await showModalBottomSheet<Map<String, dynamic>>(
//       context: context,
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       builder: (_) {
//         return StatefulBuilder(
//           builder: (context, setModalState) {
//             return Padding(
//               padding: const EdgeInsets.all(16),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     const Text(
//                       '🔍 Bộ lọc từ khóa',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     _buildKeywordSection(
//                       title: 'Danh mục',
//                       options: categories,
//                       selected: selectedCategory,
//                       onSelect: (val) =>
//                           setModalState(() => selectedCategory = val),
//                     ),
//                     _buildKeywordSection(
//                       title: 'Thương hiệu',
//                       options: brands,
//                       selected: selectedBrand,
//                       onSelect: (val) =>
//                           setModalState(() => selectedBrand = val),
//                     ),
//                     _buildKeywordSection(
//                       title: 'Loại da',
//                       options: skinTypes,
//                       selected: selectedSkinType,
//                       onSelect: (val) =>
//                           setModalState(() => selectedSkinType = val),
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: OutlinedButton(
//                             onPressed: () {
//                               setModalState(() {
//                                 selectedCategory = null;
//                                 selectedBrand = null;
//                                 selectedSkinType = null;
//                                 showDiscountOnly = false;
//                               });
//                             },
//                             style: OutlinedButton.styleFrom(
//                               side: const BorderSide(color: Color(0xFFBFAF9B)),
//                               foregroundColor: const Color(0xFFBFAF9B),
//                             ),
//                             child: const Text('Xoá tất cả'),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.pop(context, {
//                                 'category': selectedCategory,
//                                 'brand': selectedBrand,
//                                 'skinType': selectedSkinType,
//                                 'discountOnly': showDiscountOnly,
//                               });
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: const Color(0xFFBFAF9B),
//                               foregroundColor: Colors.white,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                             ),
//                             child: const Text('Áp dụng'),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   Widget _buildKeywordSection({
//     required String title,
//     required List<String> options,
//     required String? selected,
//     required Function(String?) onSelect,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 8),
//         Wrap(
//           spacing: 8,
//           runSpacing: 8,
//           children: options.map((opt) {
//             final isSelected = selected == opt;
//             return ChoiceChip(
//               label: Text(opt),
//               selected: isSelected,
//               onSelected: (_) => onSelect(isSelected ? null : opt),
//               selectedColor: const Color(0xFFBFAF9B),
//               backgroundColor: Colors.grey[200],
//               labelStyle: TextStyle(
//                 color: isSelected ? Colors.white : Colors.black,
//               ),
//             );
//           }).toList(),
//         ),
//         const SizedBox(height: 16),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import '../ProductDetailPage/product_detail_page.dart';
import '../models/product.dart';

class NewProductsPage extends StatefulWidget {
  final List<Map<String, dynamic>> productList;

  const NewProductsPage({super.key, required this.productList});

  @override
  State<NewProductsPage> createState() => _NewProductsPageState();
}

class _NewProductsPageState extends State<NewProductsPage> {
  String searchQuery = '';
  Set<String> selectedCategories = {};
  Set<String> selectedBrands = {};
  Set<String> selectedSkinTypes = {};
  bool showDiscountOnly = false;

  @override
  Widget build(BuildContext context) {
    final newProducts = widget.productList.reversed.toList();

    // Tự động lấy từ khóa lọc từ dữ liệu
    final categories = widget.productList
        .map((p) => p['type']?.toString() ?? '')
        .where((e) => e.isNotEmpty)
        .toSet()
        .toList();

    final brands = widget.productList
        .map((p) => p['brand']?.toString() ?? '')
        .where((e) => e.isNotEmpty)
        .toSet()
        .toList();

    final skinTypes = widget.productList
        .map((p) => p['specs']?['Loại da phù hợp']?.toString() ?? '')
        .where((e) => e.isNotEmpty)
        .toSet()
        .toList();

    // Lọc sản phẩm
    final filteredProducts = newProducts.where((product) {
      final nameMatch =
          product['name'].toString().toLowerCase().contains(
            searchQuery.toLowerCase(),
          ) ||
          product['brand'].toString().toLowerCase().contains(
            searchQuery.toLowerCase(),
          );

      final categoryMatch =
          selectedCategories.isEmpty ||
          selectedCategories.any(
            (c) =>
                product['type']?.toString().toLowerCase().contains(
                  c.toLowerCase(),
                ) ==
                true,
          );

      final brandMatch =
          selectedBrands.isEmpty ||
          selectedBrands.any(
            (b) =>
                product['brand']?.toString().toLowerCase().contains(
                  b.toLowerCase(),
                ) ==
                true,
          );

      final skinTypeSpec =
          product['specs']?['Loại da phù hợp']?.toString().toLowerCase() ?? '';
      final description =
          product['description']?.toString().toLowerCase() ?? '';
      final skinMatch =
          selectedSkinTypes.isEmpty ||
          selectedSkinTypes.any(
            (s) =>
                skinTypeSpec.contains(s.toLowerCase()) ||
                description.contains(s.toLowerCase()),
          );

      final isDiscounted =
          product['discountPrice'] != null &&
          product['discountPrice'] <
              (product['originalPrice'] ?? product['discountPrice']);

      final discountMatch = !showDiscountOnly || isDiscounted;

      return nameMatch &&
          categoryMatch &&
          brandMatch &&
          skinMatch &&
          discountMatch;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('🔍 Tìm kiếm sản phẩm'),
        backgroundColor: const Color(0xFFBFAF9B),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () async {
              final result = await _showKeywordFilter(
                context,
                categories,
                brands,
                skinTypes,
              );
              if (result != null) {
                setState(() {
                  selectedCategories = result['categories'];
                  selectedBrands = result['brands'];
                  selectedSkinTypes = result['skinTypes'];
                  showDiscountOnly = result['discountOnly'];
                });
              }
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Thanh tìm kiếm đẹp hơn
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Nhập tên hoặc thương hiệu...',
                prefixIcon: const Icon(Icons.search, color: Color(0xFFBFAF9B)),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xFFBFAF9B)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Color(0xFFBFAF9B),
                    width: 2,
                  ),
                ),
              ),
              onChanged: (value) => setState(() => searchQuery = value),
            ),
          ),

          const SizedBox(height: 8),

          // Grid sản phẩm hoặc thông báo
          Expanded(
            child: filteredProducts.isEmpty
                ? const Center(
                    child: Text(
                      'Không có sản phẩm phù hợp 😢',
                      style: TextStyle(fontSize: 16, color: Colors.redAccent),
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.65,
                        ),
                    itemCount: filteredProducts.length,
                    itemBuilder: (context, index) {
                      final product = filteredProducts[index];
                      final originalPrice =
                          product['originalPrice'] ?? product['discountPrice'];
                      final discountPrice = product['discountPrice'];
                      final discountPercent = (originalPrice > discountPrice)
                          ? ((originalPrice - discountPrice) /
                                    originalPrice *
                                    100)
                                .round()
                          : 0;

                      int? endTime;
                      if (product['promotionEnd'] != null) {
                        endTime = DateTime.parse(
                          product['promotionEnd'],
                        ).millisecondsSinceEpoch;
                      }

                      return InkWell(
                        onTap: () {
                          final productObj = Product.fromJson(product);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ProductDetailPage(product: productObj),
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    product['image'] ?? '',
                                    height: 100,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, __, ___) => const Icon(
                                      Icons.broken_image,
                                      size: 100,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 6),
                                if (product['promotion'] != null)
                                  Text(
                                    product['promotion'],
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                Text(
                                  product['name'] ?? '',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    if (discountPercent > 0)
                                      Text(
                                        '${originalPrice} ₫',
                                        style: const TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${discountPrice} ₫',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFFBFAF9B),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                if (discountPercent > 0)
                                  Text(
                                    'Giảm $discountPercent%',
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.green,
                                    ),
                                  ),
                                if (endTime != null)
                                  CountdownTimer(
                                    endTime: endTime,
                                    textStyle: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                Text(
                                  'Còn ${product['stockQuantity']} sp',
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
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

  Future<Map<String, dynamic>?> _showKeywordFilter(
    BuildContext context,
    List<String> categories,
    List<String> brands,
    List<String> skinTypes,
  ) async {
    // Sao chép trạng thái hiện tại để chỉnh trong BottomSheet
    Set<String> tmpCategories = {...selectedCategories};
    Set<String> tmpBrands = {...selectedBrands};
    Set<String> tmpSkinTypes = {...selectedSkinTypes};
    bool tmpDiscountOnly = showDiscountOnly;

    return await showModalBottomSheet<Map<String, dynamic>>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      '🔍 Bộ lọc từ khóa',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Danh mục (multi-select)
                    _buildMultiSelectSection(
                      title: 'Danh mục',
                      options: categories,
                      selectedSet: tmpCategories,
                      onToggle: (opt, selected) {
                        setModalState(() {
                          if (selected) {
                            tmpCategories.add(opt);
                          } else {
                            tmpCategories.remove(opt);
                          }
                        });
                      },
                    ),

                    // Thương hiệu (multi-select)
                    _buildMultiSelectSection(
                      title: 'Thương hiệu',
                      options: brands,
                      selectedSet: tmpBrands,
                      onToggle: (opt, selected) {
                        setModalState(() {
                          if (selected) {
                            tmpBrands.add(opt);
                          } else {
                            tmpBrands.remove(opt);
                          }
                        });
                      },
                    ),

                    // Loại da (multi-select)
                    _buildMultiSelectSection(
                      title: 'Loại da',
                      options: skinTypes,
                      selectedSet: tmpSkinTypes,
                      onToggle: (opt, selected) {
                        setModalState(() {
                          if (selected) {
                            tmpSkinTypes.add(opt);
                          } else {
                            tmpSkinTypes.remove(opt);
                          }
                        });
                      },
                    ),

                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              setModalState(() {
                                tmpCategories.clear();
                                tmpBrands.clear();
                                tmpSkinTypes.clear();
                                tmpDiscountOnly = false;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFFBFAF9B)),
                              foregroundColor: const Color(0xFFBFAF9B),
                            ),
                            child: const Text('Xoá tất cả'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, {
                                'categories': tmpCategories,
                                'brands': tmpBrands,
                                'skinTypes': tmpSkinTypes,
                                'discountOnly': tmpDiscountOnly,
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFBFAF9B),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text('Áp dụng'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildMultiSelectSection({
    required String title,
    required List<String> options,
    required Set<String> selectedSet,
    required void Function(String opt, bool selected) onToggle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: options.map((opt) {
            final isSel = selectedSet.contains(opt);
            return FilterChip(
              label: Text(opt),
              selected: isSel,
              onSelected: (val) => onToggle(opt, val),
              selectedColor: const Color(0xFFBFAF9B),
              checkmarkColor: Colors.white,
              labelStyle: TextStyle(color: isSel ? Colors.white : Colors.black),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
