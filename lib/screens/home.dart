import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import '../flash_deals/flash_deals.dart';
import 'package:intl/intl.dart';
import 'oct.dart';
import '../search/search_page.dart';
// import '../address_page/address_page.dart';
import '../product_data/product_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';
import '../cart/categrory_menu.dart';
import '../provider/addresspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedProductIndex;
  int? selectedCategoryIndex;

  final discountPercent = Random().nextInt(51) + 10; // 10% đến 60%

  Widget _buildFlashDealsSection(
    BuildContext context,
    List<Map<String, dynamic>> flashProducts,
  ) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );

    return Container(
      color: Colors.orange[50],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                '⚡ Flash Deals',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => FlashDealsPage()),
                  );
                },
                child: const Text(
                  'Xem tất cả',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: flashProducts.length.clamp(0, 5),
              itemBuilder: (context, index) {
                final product = flashProducts[index];
                final imageUrl = product['image'] ?? '';
                final name = product['name'] ?? '';
                final originalPrice = product['originalPrice'] ?? 0;
                final discountedPrice = product['discountedPrice'] ?? 0;
                final discountPercent = product['discountPercent'] ?? 0;

                return Container(
                  width: 160,
                  margin: const EdgeInsets.only(right: 8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                              child: Image.network(
                                imageUrl,
                                height: 140,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Container(
                                  height: 140,
                                  alignment: Alignment.center,
                                  child: const Icon(Icons.broken_image),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 6,
                              right: 6,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  '-$discountPercent%',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                currencyFormatter.format(originalPrice),
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Text(
                                currencyFormatter.format(discountedPrice),
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
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

  // ✅ Hàm hiển thị popup chi tiết sản phẩm
  void _showProductDetail(BuildContext context, Map<String, dynamic> product) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  product['image'],
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 12),
              Text(
                product['name'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '${product['price'].toStringAsFixed(0)} đ',
                style: TextStyle(fontSize: 16, color: Colors.pink),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Thêm vào giỏ hàng'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> banners = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg',
  ];

  final List<Map<String, dynamic>> mainFunctions = [
    {'icon': Icons.category, 'label': 'Danh mục'},
    {'icon': Icons.new_releases, 'label': 'Hàng mới'},
    {'icon': Icons.menu_book, 'label': 'Cẩm nang'},
    {'icon': Icons.calendar_today, 'label': 'Đặt hẹn'},
    {'icon': Icons.delivery_dining, 'label': 'Giao 2H'},
  ];

  List<Map<String, dynamic>> generateFlashDeals(
    List<Map<String, dynamic>> products,
    SharedPreferences prefs,
  ) {
    final now = DateTime.now().millisecondsSinceEpoch;
    final List<Map<String, dynamic>> flashProducts = [];

    for (var product in products) {
      final id = product['id'].toString();
      final price = product['price'] ?? 0;

      // Lấy thông tin đã lưu
      final savedDiscount = prefs.getInt('discount_value_$id');
      final savedTime = prefs.getInt('discount_time_$id');

      int discountPercent;
      int originalPrice;
      int discountedPrice;

      // Nếu chưa có hoặc đã quá 4 tiếng → tạo mới
      if (savedDiscount == null ||
          savedTime == null ||
          now - savedTime > 1000 * 60 * 240) {
        discountPercent = Random().nextInt(51) + 10; // từ 10% đến 60%
        originalPrice = (price * 100) ~/ (100 - discountPercent);
        discountedPrice = price;

        // Lưu lại
        prefs.setInt('discount_value_$id', discountPercent);
        prefs.setInt('discount_time_$id', now);
      } else {
        discountPercent = savedDiscount;
        originalPrice = (price * 100) ~/ (100 - discountPercent);
        discountedPrice = price;
      }

      flashProducts.add({
        ...product,
        'originalPrice': originalPrice,
        'discountedPrice': discountedPrice,
        'discountPercent': discountPercent,
      });
    }

    return flashProducts;
  }

  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;
  Timer? _bannerTimer;

  @override
  void initState() {
    super.initState();
    _bannerTimer = Timer.periodic(Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        _currentPage++;
        if (_currentPage >= banners.length) _currentPage = 0;
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _bannerTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int hoveredIndex = -1;
    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );

    final now = DateTime.now().millisecondsSinceEpoch;

    final List<Map<String, dynamic>> flashProducts = productList
        .where((p) => p['promotion'] != null)
        .map((p) => {...p, 'originalPrice': (p['price'] as int) * 2})
        .toList();

    final List<String> viewedProductIds = [
      '101',
      '205',
      '309',
    ]; // ví dụ nếu có lưu lịch sử

    // 1. Lượt bán cao
    final highSoldProducts = productList.where((p) => (p['sold'] ?? 0) > 100);

    // 2. Đánh giá tốt
    final highRatedProducts = productList.where(
      (p) => (p['rating'] ?? 0) > 4.5,
    );

    // 3. Người dùng đã xem
    final viewedProducts = productList.where(
      (p) => viewedProductIds.contains(p['id'].toString()),
    );

    // 4. Hãng có nhiều sản phẩm nhất
    final brandCounts = <String, int>{};
    for (var p in productList) {
      final brand = p['brand'] ?? 'Khác';
      brandCounts[brand] = (brandCounts[brand] ?? 0) + 1;
    }
    final topBrand = brandCounts.entries
        .reduce((a, b) => a.value > b.value ? a : b)
        .key;
    final topBrandProducts = productList.where((p) => p['brand'] == topBrand);

    // 5. Sản phẩm có giảm giá cao nhất
    final discountSorted =
        productList.map((p) {
          final price = p['price'] ?? 0;
          final original = p['originalPrice'] ?? price;
          final percent = original > price
              ? ((original - price) / original * 100).round()
              : 0;
          return {...p, 'discountPercent': percent};
        }).toList()..sort(
          (a, b) => (b['discountPercent'] as int).compareTo(
            a['discountPercent'] as int,
          ),
        );
    final topDiscountProduct = discountSorted.isNotEmpty
        ? [discountSorted.first]
        : [];

    // ✅ Gộp tất cả sản phẩm gợi ý (loại trùng)
    final recommendedProducts = [
      ...highSoldProducts,
      ...highRatedProducts,
      ...viewedProducts,
      ...topBrandProducts,
      ...topDiscountProduct,
    ].toSet().toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ✅ Container xanh lá: tìm kiếm + banner + chức năng chính
            Container(
              color: Colors.green[50],
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                children: [
                  // 🔍 Thanh tìm kiếm hoàn chỉnh với logo, địa chỉ, giỏ hàng
                  Row(
                    children: [
                      // Logo bên trái
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/logo.jpg',
                          height: 32,
                          width: 32,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8),

                      // Ô tìm kiếm ở giữa
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const SearchPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.search, color: Colors.grey),
                                SizedBox(width: 8),
                                Text(
                                  'Tìm kiếm sản phẩm...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Nút địa chỉ
                      IconButton(
                        icon: const Icon(Icons.location_on_outlined),
                        tooltip: 'Địa chỉ',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const AddressPage(),
                            ),
                          );
                        },
                      ),

                      // Nút giỏ hàng
                      IconButton(
                        icon: const Icon(Icons.shopping_cart_outlined),
                        tooltip: 'Giỏ hàng',
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (_) => const CartPage()),
                          // );
                        },
                      ),
                    ],
                  ),

                  // 🖼️ Banner bo góc + tự động cuộn
                  SizedBox(
                    height: 160,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: banners.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                          ), // khoảng cách giữa các banner
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              banners[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 12),

                  // 🧭 Chức năng chính
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: mainFunctions.map((func) {
                      return Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green[100],
                            child: Icon(func['icon'], color: Colors.green),
                          ),
                          SizedBox(height: 4),
                          Text(func['label'], style: TextStyle(fontSize: 12)),
                        ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),

            // 🌟 Flash Deals dùng FutureBuilder
            FutureBuilder<SharedPreferences>(
              future: SharedPreferences.getInstance(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return SizedBox();

                final prefs = snapshot.data!;
                final now = DateTime.now().millisecondsSinceEpoch;

                final List<Map<String, dynamic>> flashProducts = productList
                    .where((p) => p['promotion'] != null)
                    .map((p) {
                      final id = p['id'].toString();
                      final price = p['price'] as int;

                      // Lấy dữ liệu đã lưu
                      final savedDiscount = prefs.getInt('discount_value_$id');
                      final savedTime = prefs.getInt('discount_time_$id');

                      int discountPercent;
                      int originalPrice;
                      double discountedPrice = price.toDouble();

                      // Nếu chưa có hoặc đã quá 4 tiếng → tạo mới
                      if (savedDiscount == null ||
                          savedTime == null ||
                          now - savedTime > 1000 * 60 * 240) {
                        discountPercent =
                            Random().nextInt(51) + 10; // từ 10% đến 60%
                        originalPrice =
                            (price * 100) ~/ (100 - discountPercent);

                        prefs.setInt('discount_value_$id', discountPercent);
                        prefs.setInt('discount_time_$id', now);
                      } else {
                        discountPercent = savedDiscount;
                        originalPrice =
                            (price * 100) ~/ (100 - discountPercent);
                      }

                      final endTime =
                          (prefs.getInt('discount_time_$id') ?? now) +
                          1000 * 60 * 240;

                      return {
                        ...p,
                        'originalPrice': originalPrice,
                        'discountedPrice': discountedPrice,
                        'discountPercent': discountPercent,
                        'endTime': endTime,
                      };
                    })
                    .toList();

                return _buildFlashDealsSection(context, flashProducts);
              },
            ),

            // 🛍️ Danh mục sản phẩm
            CategoryMenu(),

            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Danh mục sản phẩm',
            //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //       ),
            //       SizedBox(height: 8),
            //       SizedBox(
            //         height: 140,
            //         child: ListView.builder(
            //           scrollDirection: Axis.horizontal,
            //           itemCount: productCategories.length,
            //           itemBuilder: (context, index) {
            //             final cat = productCategories[index];
            //             final isSelected = selectedCategoryIndex == index;

            //             return GestureDetector(
            //               onTap: () {
            //                 setState(() {
            //                   selectedCategoryIndex = index;
            //                 });
            //                 // TODO: chuyển đến trang sản phẩm theo danh mục
            //               },
            //               child: AnimatedContainer(
            //                 duration: Duration(milliseconds: 300),
            //                 width: 120,
            //                 margin: EdgeInsets.only(right: 12),
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(12),
            //                   border: Border.all(
            //                     color: isSelected
            //                         ? Colors.pink
            //                         : Colors.transparent,
            //                     width: 2,
            //                   ),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.black12,
            //                       blurRadius: isSelected ? 6 : 3,
            //                       offset: Offset(0, 2),
            //                     ),
            //                   ],
            //                 ),
            //                 child: Stack(
            //                   children: [
            //                     ClipRRect(
            //                       borderRadius: BorderRadius.circular(12),
            //                       child: Image.asset(
            //                         cat['image'],
            //                         height: 140,
            //                         width: 120,
            //                         fit: BoxFit.cover,
            //                       ),
            //                     ),
            //                     Positioned(
            //                       bottom: 0,
            //                       left: 0,
            //                       right: 0,
            //                       child: Container(
            //                         padding: EdgeInsets.symmetric(vertical: 6),
            //                         decoration: BoxDecoration(
            //                           color: Colors.black.withOpacity(0.5),
            //                           borderRadius: BorderRadius.only(
            //                             bottomLeft: Radius.circular(12),
            //                             bottomRight: Radius.circular(12),
            //                           ),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             cat['label'],
            //                             style: TextStyle(
            //                               color: Colors.white,
            //                               fontSize: 13,
            //                               fontWeight: isSelected
            //                                   ? FontWeight.bold
            //                                   : FontWeight.normal,
            //                             ),
            //                             textAlign: TextAlign.center,
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             );
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // 🔍 Gợi ý sản phẩm theo hành vi người dùng
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Gợi ý sản phẩm theo hành vi người dùng',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: recommendedProducts.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.72,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                    itemBuilder: (context, index) {
                      final product = recommendedProducts[index];
                      final name = product['name'] ?? 'Không có tên';
                      final image = product['image'] ?? '';
                      final price = product['price'] ?? 0;
                      final originalPrice = product['originalPrice'] ?? price;
                      final discountPercent =
                          product['discountPercent'] ??
                          ((originalPrice > price)
                              ? ((originalPrice - price) / originalPrice * 100)
                                    .round()
                              : 0);
                      final sold = product['sold'] ?? 0;
                      final promotion = product['promotion'];
                      final currencyFormatter = NumberFormat.currency(
                        locale: 'vi_VN',
                        symbol: '₫',
                        decimalDigits: 0,
                      );

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      image,
                                      height: 110,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                      errorBuilder: (_, __, ___) => Container(
                                        height: 110,
                                        alignment: Alignment.center,
                                        child: const Icon(Icons.broken_image),
                                      ),
                                    ),
                                  ),
                                  if (discountPercent > 0)
                                    Positioned(
                                      top: 6,
                                      right: 6,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 3,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
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

                              // 🎁 Khuyến mãi
                              if (promotion != null)
                                Container(
                                  margin: const EdgeInsets.only(top: 6),
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

                              const SizedBox(height: 6),

                              // 🏷️ Tên sản phẩm
                              Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),

                              const SizedBox(height: 4),

                              // 💰 Giá
                              Row(
                                children: [
                                  Text(
                                    currencyFormatter.format(originalPrice),
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    currencyFormatter.format(price),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              const Spacer(),

                              // 🛒 Đã bán
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
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
