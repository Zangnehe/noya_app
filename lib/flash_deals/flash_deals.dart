// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../provider/cart_provider.dart';
// import '../models/product.dart';
// import 'package:giao_dien_trang_home/product_data/product_data.dart';
// import 'dart:math';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import '../ReusableFlashDealCard/reusable_flash_deal_card.dart';

// class FlashDealsPage extends StatefulWidget {
//   const FlashDealsPage({super.key});

//   @override
//   State<FlashDealsPage> createState() => _FlashDealsPageState();
// }

// String formatCurrency(double value) {
//   final formatter = NumberFormat.currency(
//     locale: 'vi_VN',
//     symbol: 'đ',
//     decimalDigits: 0,
//   );
//   return formatter.format(value);
// }

// Future<int> getDiscountPercent(String productId) async {
//   final prefs = await SharedPreferences.getInstance();
//   final key = 'discount_$productId';
//   final timeKey = 'discount_time_$productId';

//   final saved = prefs.getInt(key);
//   final savedTime = prefs.getInt(timeKey);
//   final now = DateTime.now().millisecondsSinceEpoch;
//   final fourHours = 4 * 60 * 60 * 1000;

//   if (saved != null && savedTime != null && now - savedTime < fourHours) {
//     return saved;
//   } else {
//     final newDiscount = Random().nextInt(30) + 5;
//     await prefs.setInt(key, newDiscount);
//     await prefs.setInt(timeKey, now);
//     return newDiscount;
//   }
// }

// Future<Duration> getRemainingTime(String productId) async {
//   final prefs = await SharedPreferences.getInstance();
//   final savedTime = prefs.getInt('discount_time_$productId');
//   if (savedTime == null) return Duration.zero;

//   final endTime = DateTime.fromMillisecondsSinceEpoch(
//     savedTime,
//   ).add(Duration(hours: 4));
//   return endTime.difference(DateTime.now());
// }

// class _FlashDealsPageState extends State<FlashDealsPage> {
//   int? selectedFixedPrice;
//   String? selectedBrand;
//   String? selectedType;
//   String sortOption = 'Mặc định';
//   final double _minPrice = 0;
//   final double _maxPrice = 500000;

//   List<Map<String, dynamic>> get filteredProducts {
//     return productList.where((p) {
//       final price = (p['price'] as num).toDouble();
//       final matchPrice =
//           selectedFixedPrice == null || price <= selectedFixedPrice!;
//       final matchBrand = selectedBrand == null || p['brand'] == selectedBrand;
//       final matchType = selectedType == null || p['type'] == selectedType;
//       return matchPrice && matchBrand && matchType;
//     }).toList()..sort((a, b) {
//       switch (sortOption) {
//         case 'Thương hiệu A-Z':
//           return a['brand'].compareTo(b['brand']);
//         case 'Giá tăng dần':
//           return a['price'].compareTo(b['price']);
//         case 'Giá giảm dần':
//           return b['price'].compareTo(a['price']);
//         default:
//           return 0;
//       }
//     });
//   }

//   void resetFilters() {
//     setState(() {
//       selectedFixedPrice = null;
//       selectedBrand = null;
//       selectedType = null;
//       sortOption = 'Mặc định';
//     });
//   }

//   int _extractDiscountPercent(String? promotion) {
//     if (promotion == null) return 0;
//     final regex = RegExp(r'Giảm (\d+)%');
//     final match = regex.firstMatch(promotion);
//     return match != null ? int.parse(match.group(1)!) : 0;
//   }

//   void _showFilterDialog() {
//     showGeneralDialog(
//       context: context,
//       barrierDismissible: true,
//       barrierLabel: 'Bộ lọc',
//       transitionDuration: Duration(milliseconds: 300),
//       pageBuilder: (_, __, ___) {
//         return BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
//           child: Center(
//             child: Material(
//               borderRadius: BorderRadius.circular(16),
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.9,
//                 padding: EdgeInsets.all(16),
//                 child: StatefulBuilder(
//                   builder: (context, setStateDialog) {
//                     final sortedBrands =
//                         productList
//                             .map((p) => p['brand'])
//                             .whereType<String>()
//                             .toSet()
//                             .toList()
//                           ..sort();

//                     final sortedTypes =
//                         productList
//                             .map((p) => p['type'])
//                             .whereType<String>()
//                             .toSet()
//                             .toList()
//                           ..sort();

//                     return SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Bộ lọc sản phẩm',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 12),

//                           // Lọc theo giá
//                           Text(
//                             'Lọc theo giá:',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           DropdownButton<int>(
//                             value: selectedFixedPrice,
//                             hint: Text('Chọn mức giá'),
//                             isExpanded: true,
//                             items: [200000, 400000, 600000].map((price) {
//                               return DropdownMenuItem<int>(
//                                 value: price,
//                                 child: Text('Dưới ${price ~/ 1000}.000 đ'),
//                               );
//                             }).toList(),
//                             onChanged: (value) {
//                               setStateDialog(() => selectedFixedPrice = value);
//                               setState(() {}); // ✅ cập nhật danh sách ngay
//                             },
//                           ),
//                           if (selectedFixedPrice != null)
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 8),
//                               child: Text(
//                                 'Đã chọn: dưới ${selectedFixedPrice! ~/ 1000}.000 đ',
//                                 style: TextStyle(color: Colors.blue),
//                               ),
//                             ),

//                           // Thương hiệu
//                           DropdownButton<String>(
//                             value: selectedBrand,
//                             hint: Text('Chọn thương hiệu'),
//                             isExpanded: true,
//                             items: sortedBrands.map((brand) {
//                               return DropdownMenuItem<String>(
//                                 value: brand,
//                                 child: Text(brand),
//                               );
//                             }).toList(),
//                             onChanged: (value) {
//                               setStateDialog(() => selectedBrand = value);
//                               setState(() {});
//                             },
//                           ),
//                           if (selectedBrand != null)
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 8),
//                               child: Text(
//                                 'Đã chọn: $selectedBrand',
//                                 style: TextStyle(color: Colors.blue),
//                               ),
//                             ),

//                           // Loại sản phẩm
//                           DropdownButton<String>(
//                             value: selectedType,
//                             hint: Text('Chọn loại'),
//                             isExpanded: true,
//                             items: sortedTypes.map((type) {
//                               return DropdownMenuItem<String>(
//                                 value: type,
//                                 child: Text(type),
//                               );
//                             }).toList(),
//                             onChanged: (value) {
//                               setStateDialog(() => selectedType = value);
//                               setState(() {});
//                             },
//                           ),
//                           if (selectedType != null)
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 8),
//                               child: Text(
//                                 'Đã chọn: $selectedType',
//                                 style: TextStyle(color: Colors.blue),
//                               ),
//                             ),

//                           // Sắp xếp
//                           DropdownButton<String>(
//                             value: sortOption,
//                             isExpanded: true,
//                             items:
//                                 [
//                                   'Mặc định',
//                                   'Thương hiệu A-Z',
//                                   'Giá tăng dần',
//                                   'Giá giảm dần',
//                                 ].map((option) {
//                                   return DropdownMenuItem<String>(
//                                     value: option,
//                                     child: Text(option),
//                                   );
//                                 }).toList(),
//                             onChanged: (value) {
//                               setStateDialog(() => sortOption = value!);
//                               setState(() {});
//                             },
//                           ),

//                           // Nút hành động
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: OutlinedButton.icon(
//                                   onPressed: () {
//                                     setStateDialog(() {
//                                       selectedFixedPrice = null;
//                                       selectedBrand = null;
//                                       selectedType = null;
//                                       sortOption = 'Mặc định';
//                                     });
//                                     setState(() {});
//                                     Navigator.pop(context);
//                                   },
//                                   icon: Icon(Icons.refresh),
//                                   label: Text('Xóa bộ lọc'),
//                                 ),
//                               ),
//                               SizedBox(width: 12),
//                               Expanded(
//                                 child: ElevatedButton(
//                                   onPressed: () => Navigator.pop(context),
//                                   child: Text('Đóng'),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//       transitionBuilder: (_, anim, __, child) {
//         return FadeTransition(opacity: anim, child: child);
//       },
//     );
//   }

//   Widget _buildFilterContent({required VoidCallback onFilterChanged}) {
//     final sortedBrands =
//         productList.map((p) => p['brand']).whereType<String>().toSet().toList()
//           ..sort();

//     final sortedTypes =
//         productList.map((p) => p['type']).whereType<String>().toSet().toList()
//           ..sort();

//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Bộ lọc sản phẩm',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 12),

//           Text('Lọc theo giá:', style: TextStyle(fontWeight: FontWeight.bold)),
//           DropdownButton<int>(
//             value: selectedFixedPrice,
//             hint: Text('Chọn mức giá'),
//             isExpanded: true,
//             items: [200000, 400000, 600000].map((price) {
//               return DropdownMenuItem<int>(
//                 value: price,
//                 child: Text('Dưới ${price ~/ 1000}.000 đ'),
//               );
//             }).toList(),
//             onChanged: (value) {
//               setState(() => selectedFixedPrice = value);
//               onFilterChanged();
//             },
//           ),
//           if (selectedFixedPrice != null)
//             Padding(
//               padding: EdgeInsets.only(bottom: 8),
//               child: Text(
//                 'Đã chọn: dưới ${selectedFixedPrice! ~/ 1000}.000 đ',
//                 style: TextStyle(color: Colors.blue),
//               ),
//             ),

//           DropdownButton<String>(
//             value: selectedBrand,
//             hint: Text('Chọn thương hiệu'),
//             isExpanded: true,
//             items: sortedBrands.map((brand) {
//               return DropdownMenuItem<String>(value: brand, child: Text(brand));
//             }).toList(),
//             onChanged: (value) {
//               setState(() => selectedBrand = value);
//               onFilterChanged();
//             },
//           ),
//           if (selectedBrand != null)
//             Padding(
//               padding: EdgeInsets.only(bottom: 8),
//               child: Text(
//                 'Đã chọn: $selectedBrand',
//                 style: TextStyle(color: Colors.blue),
//               ),
//             ),

//           DropdownButton<String>(
//             value: selectedType,
//             hint: Text('Chọn loại'),
//             isExpanded: true,
//             items: sortedTypes.map((type) {
//               return DropdownMenuItem<String>(value: type, child: Text(type));
//             }).toList(),
//             onChanged: (value) {
//               setState(() => selectedType = value);
//               onFilterChanged();
//             },
//           ),
//           if (selectedType != null)
//             Padding(
//               padding: EdgeInsets.only(bottom: 8),
//               child: Text(
//                 'Đã chọn: $selectedType',
//                 style: TextStyle(color: Colors.blue),
//               ),
//             ),

//           DropdownButton<String>(
//             value: sortOption,
//             isExpanded: true,
//             items:
//                 [
//                   'Mặc định',
//                   'Thương hiệu A-Z',
//                   'Giá tăng dần',
//                   'Giá giảm dần',
//                 ].map((option) {
//                   return DropdownMenuItem<String>(
//                     value: option,
//                     child: Text(option),
//                   );
//                 }).toList(),
//             onChanged: (value) {
//               setState(() => sortOption = value!);
//               onFilterChanged();
//             },
//           ),

//           Row(
//             children: [
//               Expanded(
//                 child: OutlinedButton.icon(
//                   onPressed: () {
//                     resetFilters();
//                     onFilterChanged();
//                     Navigator.pop(context);
//                   },
//                   icon: Icon(Icons.refresh),
//                   label: Text('Xóa bộ lọc'),
//                 ),
//               ),
//               SizedBox(width: 12),
//               Expanded(
//                 child: ElevatedButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: Text('Đóng'),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flash Deals'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.filter_list),
//             onPressed: _showFilterDialog,
//           ),
//           Stack(
//             alignment: Alignment.center,
//             children: [
//               IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
//               if (cart.totalItems > 0)
//                 Positioned(
//                   right: 6,
//                   top: 6,
//                   child: Container(
//                     padding: EdgeInsets.all(4),
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Text(
//                       '${cart.totalItems}',
//                       style: TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ],
//       ),
//       body: filteredProducts.isEmpty
//           ? Center(child: Text('Không có sản phẩm nào'))
//           : CustomScrollView(
//               slivers: [
//                 SliverPadding(
//                   padding: EdgeInsets.all(12),
//                   sliver: SliverGrid(
//                     delegate: SliverChildBuilderDelegate(
//                       (context, index) => ReusableFlashDealCard(
//                         item: filteredProducts[index],
//                         cart: cart,
//                       ),
//                       childCount: filteredProducts.length,
//                     ),
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisExtent: 280,
//                       crossAxisSpacing: 12,
//                       mainAxisSpacing: 12,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import '../product_data/product_data.dart';
import '../models/product.dart';
import '../ProductDetailPage/product_detail_page.dart';

class FlashDealsPage extends StatefulWidget {
  const FlashDealsPage({super.key});

  @override
  State<FlashDealsPage> createState() => _FlashDealsPageState();
}

class _FlashDealsPageState extends State<FlashDealsPage> {
  int? selectedFixedPrice;
  String? selectedBrand;
  String? selectedType;
  String sortOption = 'Mặc định';

  double _getPrice(dynamic value) {
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  List<Product> get filteredProducts {
    final list = productList
        .where((p) {
          final originalPrice = _getPrice(p['originalPrice'] ?? p['price']);
          final discountPrice = _getPrice(p['discountPrice']);
          final hasDiscount =
              discountPrice > 0 && discountPrice < originalPrice;

          final matchPrice =
              selectedFixedPrice == null ||
              originalPrice <= selectedFixedPrice!;
          final matchBrand =
              selectedBrand == null ||
              (p['brand']?.toString() == selectedBrand);
          final matchType =
              selectedType == null || (p['type']?.toString() == selectedType);

          return hasDiscount && matchPrice && matchBrand && matchType;
        })
        .map((p) => Product.fromJson(p))
        .toList();

    list.sort((a, b) {
      switch (sortOption) {
        case 'Thương hiệu A-Z':
          return a.brand.compareTo(b.brand);
        case 'Giá tăng dần':
          return (a.discountPrice ?? a.price).compareTo(
            b.discountPrice ?? b.price,
          );
        case 'Giá giảm dần':
          return (b.discountPrice ?? b.price).compareTo(
            a.discountPrice ?? a.price,
          );
        default:
          return 0;
      }
    });

    return list;
  }

  void resetFilters() {
    setState(() {
      selectedFixedPrice = null;
      selectedBrand = null;
      selectedType = null;
      sortOption = 'Mặc định';
    });
  }

  void _showFilterSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: StatefulBuilder(
            builder: (context, setStateDialog) {
              final sortedBrands =
                  productList
                      .map((p) => p['brand']?.toString())
                      .whereType<String>()
                      .toSet()
                      .toList()
                    ..sort();
              final sortedTypes =
                  productList
                      .map((p) => p['type']?.toString())
                      .whereType<String>()
                      .toSet()
                      .toList()
                    ..sort();

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    const Text(
                      'Bộ lọc sản phẩm',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),

                    DropdownButtonFormField<int>(
                      value: selectedFixedPrice,
                      decoration: const InputDecoration(
                        labelText: 'Mức giá',
                        prefixIcon: Icon(Icons.price_change),
                        border: OutlineInputBorder(),
                      ),
                      items: [200000, 400000, 600000].map((price) {
                        return DropdownMenuItem<int>(
                          value: price,
                          child: Text('Dưới ${price ~/ 1000}.000 đ'),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setStateDialog(() => selectedFixedPrice = value);
                        setState(() {});
                      },
                    ),

                    const SizedBox(height: 12),

                    DropdownButtonFormField<String>(
                      value: selectedBrand,
                      decoration: const InputDecoration(
                        labelText: 'Thương hiệu',
                        prefixIcon: Icon(Icons.business),
                        border: OutlineInputBorder(),
                      ),
                      items: sortedBrands.map((brand) {
                        return DropdownMenuItem<String>(
                          value: brand,
                          child: Text(brand),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setStateDialog(() => selectedBrand = value);
                        setState(() {});
                      },
                    ),

                    const SizedBox(height: 12),

                    DropdownButtonFormField<String>(
                      value: selectedType,
                      decoration: const InputDecoration(
                        labelText: 'Loại sản phẩm',
                        prefixIcon: Icon(Icons.category),
                        border: OutlineInputBorder(),
                      ),
                      items: sortedTypes.map((type) {
                        return DropdownMenuItem<String>(
                          value: type,
                          child: Text(type),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setStateDialog(() => selectedType = value);
                        setState(() {});
                      },
                    ),

                    const SizedBox(height: 12),

                    DropdownButtonFormField<String>(
                      value: sortOption,
                      decoration: const InputDecoration(
                        labelText: 'Sắp xếp',
                        prefixIcon: Icon(Icons.sort),
                        border: OutlineInputBorder(),
                      ),
                      items:
                          const [
                            'Mặc định',
                            'Thương hiệu A-Z',
                            'Giá tăng dần',
                            'Giá giảm dần',
                          ].map((option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                      onChanged: (value) {
                        setStateDialog(() => sortOption = value!);
                        setState(() {});
                      },
                    ),

                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.grey[700], // ✅ chữ xám
                              side: BorderSide(
                                color: Colors.grey[400]!,
                              ), // ✅ viền xám
                            ),
                            onPressed: () {
                              resetFilters();
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.refresh),
                            label: const Text('Xóa bộ lọc'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton.icon(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.grey[700], // ✅ chữ xám
                              side: BorderSide(
                                color: Colors.grey[400]!,
                              ), // ✅ viền xám
                            ),
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.check),
                            label: const Text('Áp dụng'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flash Deals'),
        backgroundColor: const Color(0xFF8B5E3C),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: _showFilterSheet,
          ),
        ],
      ),
      body: filteredProducts.isEmpty
          ? const Center(child: Text('Không có sản phẩm giảm giá'))
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: filteredProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 340,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
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

                return InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetailPage(product: product),
                      ),
                    );
                  },
                  child: Card(
                    color: const Color(0xFFF5F5F5),
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
                                if (discountPercent > 0)
                                  Positioned(
                                    top: 6,
                                    right: 6,
                                    child: _DiscountBadge(
                                      discountPercent: discountPercent,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          if (product.promotion != null)
                            _PromotionBadge(text: product.promotion!),
                          const SizedBox(height: 6),
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
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
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Giảm $discountPercent%',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                                fontStyle: FontStyle.italic,
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
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
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
