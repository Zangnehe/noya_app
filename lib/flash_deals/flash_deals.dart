import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';
import '../models/product.dart';
import 'package:giao_dien_trang_home/product_data/product_data.dart';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import '../ReusableFlashDealCard/reusable_flash_deal_card.dart';

class FlashDealsPage extends StatefulWidget {
  @override
  State<FlashDealsPage> createState() => _FlashDealsPageState();
}

String formatCurrency(double value) {
  final formatter = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: 'đ',
    decimalDigits: 0,
  );
  return formatter.format(value);
}

Future<int> getDiscountPercent(String productId) async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'discount_$productId';
  final timeKey = 'discount_time_$productId';

  final saved = prefs.getInt(key);
  final savedTime = prefs.getInt(timeKey);
  final now = DateTime.now().millisecondsSinceEpoch;
  final fourHours = 4 * 60 * 60 * 1000;

  if (saved != null && savedTime != null && now - savedTime < fourHours) {
    return saved;
  } else {
    final newDiscount = Random().nextInt(30) + 5;
    await prefs.setInt(key, newDiscount);
    await prefs.setInt(timeKey, now);
    return newDiscount;
  }
}

Future<Duration> getRemainingTime(String productId) async {
  final prefs = await SharedPreferences.getInstance();
  final savedTime = prefs.getInt('discount_time_$productId');
  if (savedTime == null) return Duration.zero;

  final endTime = DateTime.fromMillisecondsSinceEpoch(
    savedTime,
  ).add(Duration(hours: 4));
  return endTime.difference(DateTime.now());
}

class _FlashDealsPageState extends State<FlashDealsPage> {
  int? selectedFixedPrice;
  String? selectedBrand;
  String? selectedType;
  String sortOption = 'Mặc định';
  double _minPrice = 0;
  double _maxPrice = 500000;

  List<Map<String, dynamic>> get filteredProducts {
    return productList.where((p) {
      final price = (p['price'] as num).toDouble();
      final matchPrice =
          selectedFixedPrice == null || price <= selectedFixedPrice!;
      final matchBrand = selectedBrand == null || p['brand'] == selectedBrand;
      final matchType = selectedType == null || p['type'] == selectedType;
      return matchPrice && matchBrand && matchType;
    }).toList()..sort((a, b) {
      switch (sortOption) {
        case 'Thương hiệu A-Z':
          return a['brand'].compareTo(b['brand']);
        case 'Giá tăng dần':
          return a['price'].compareTo(b['price']);
        case 'Giá giảm dần':
          return b['price'].compareTo(a['price']);
        default:
          return 0;
      }
    });
  }

  void resetFilters() {
    setState(() {
      selectedFixedPrice = null;
      selectedBrand = null;
      selectedType = null;
      sortOption = 'Mặc định';
    });
  }

  int _extractDiscountPercent(String? promotion) {
    if (promotion == null) return 0;
    final regex = RegExp(r'Giảm (\d+)%');
    final match = regex.firstMatch(promotion);
    return match != null ? int.parse(match.group(1)!) : 0;
  }

  void _showFilterDialog() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Bộ lọc',
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Center(
            child: Material(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(16),
                child: StatefulBuilder(
                  builder: (context, setStateDialog) {
                    final sortedBrands =
                        productList
                            .map((p) => p['brand'])
                            .whereType<String>()
                            .toSet()
                            .toList()
                          ..sort();

                    final sortedTypes =
                        productList
                            .map((p) => p['type'])
                            .whereType<String>()
                            .toSet()
                            .toList()
                          ..sort();

                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bộ lọc sản phẩm',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12),

                          // Lọc theo giá
                          Text(
                            'Lọc theo giá:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          DropdownButton<int>(
                            value: selectedFixedPrice,
                            hint: Text('Chọn mức giá'),
                            isExpanded: true,
                            items: [200000, 400000, 600000].map((price) {
                              return DropdownMenuItem<int>(
                                value: price,
                                child: Text('Dưới ${price ~/ 1000}.000 đ'),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setStateDialog(() => selectedFixedPrice = value);
                              setState(() {}); // ✅ cập nhật danh sách ngay
                            },
                          ),
                          if (selectedFixedPrice != null)
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Đã chọn: dưới ${selectedFixedPrice! ~/ 1000}.000 đ',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),

                          // Thương hiệu
                          DropdownButton<String>(
                            value: selectedBrand,
                            hint: Text('Chọn thương hiệu'),
                            isExpanded: true,
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
                          if (selectedBrand != null)
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Đã chọn: $selectedBrand',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),

                          // Loại sản phẩm
                          DropdownButton<String>(
                            value: selectedType,
                            hint: Text('Chọn loại'),
                            isExpanded: true,
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
                          if (selectedType != null)
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Đã chọn: $selectedType',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),

                          // Sắp xếp
                          DropdownButton<String>(
                            value: sortOption,
                            isExpanded: true,
                            items:
                                [
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

                          // Nút hành động
                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () {
                                    setStateDialog(() {
                                      selectedFixedPrice = null;
                                      selectedBrand = null;
                                      selectedType = null;
                                      sortOption = 'Mặc định';
                                    });
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.refresh),
                                  label: Text('Xóa bộ lọc'),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Đóng'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return FadeTransition(opacity: anim, child: child);
      },
    );
  }

  Widget _buildFilterContent({required VoidCallback onFilterChanged}) {
    final sortedBrands =
        productList.map((p) => p['brand']).whereType<String>().toSet().toList()
          ..sort();

    final sortedTypes =
        productList.map((p) => p['type']).whereType<String>().toSet().toList()
          ..sort();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bộ lọc sản phẩm',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),

          Text('Lọc theo giá:', style: TextStyle(fontWeight: FontWeight.bold)),
          DropdownButton<int>(
            value: selectedFixedPrice,
            hint: Text('Chọn mức giá'),
            isExpanded: true,
            items: [200000, 400000, 600000].map((price) {
              return DropdownMenuItem<int>(
                value: price,
                child: Text('Dưới ${price ~/ 1000}.000 đ'),
              );
            }).toList(),
            onChanged: (value) {
              setState(() => selectedFixedPrice = value);
              onFilterChanged();
            },
          ),
          if (selectedFixedPrice != null)
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'Đã chọn: dưới ${selectedFixedPrice! ~/ 1000}.000 đ',
                style: TextStyle(color: Colors.blue),
              ),
            ),

          DropdownButton<String>(
            value: selectedBrand,
            hint: Text('Chọn thương hiệu'),
            isExpanded: true,
            items: sortedBrands.map((brand) {
              return DropdownMenuItem<String>(value: brand, child: Text(brand));
            }).toList(),
            onChanged: (value) {
              setState(() => selectedBrand = value);
              onFilterChanged();
            },
          ),
          if (selectedBrand != null)
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'Đã chọn: $selectedBrand',
                style: TextStyle(color: Colors.blue),
              ),
            ),

          DropdownButton<String>(
            value: selectedType,
            hint: Text('Chọn loại'),
            isExpanded: true,
            items: sortedTypes.map((type) {
              return DropdownMenuItem<String>(value: type, child: Text(type));
            }).toList(),
            onChanged: (value) {
              setState(() => selectedType = value);
              onFilterChanged();
            },
          ),
          if (selectedType != null)
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'Đã chọn: $selectedType',
                style: TextStyle(color: Colors.blue),
              ),
            ),

          DropdownButton<String>(
            value: sortOption,
            isExpanded: true,
            items:
                [
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
              setState(() => sortOption = value!);
              onFilterChanged();
            },
          ),

          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {
                    resetFilters();
                    onFilterChanged();
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.refresh),
                  label: Text('Xóa bộ lọc'),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Đóng'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flash Deals'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: _showFilterDialog,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
              if (cart.totalItems > 0)
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${cart.totalItems}',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: filteredProducts.isEmpty
          ? Center(child: Text('Không có sản phẩm nào'))
          : CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.all(12),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ReusableFlashDealCard(
                        item: filteredProducts[index],
                        cart: cart,
                      ),
                      childCount: filteredProducts.length,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 280,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
