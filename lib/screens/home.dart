import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import '../flash_deals/flash_deals.dart';
import 'package:intl/intl.dart';
import '../search/search_page.dart';
// import '../address_page/address_page.dart';
import '../product_data/product_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';
import '../cart/categrory_menu.dart';
import 'package:provider/provider.dart';
import '../RecommendedProducts/recommended_products_widget.dart';
import '../ProductDetailPage/product_detail_page.dart';
import '../models/product.dart';
import '../provider/cart_page.dart';
import '../provider/cart_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;
  Timer? _bannerTimer;

  final List<String> banners = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg',
  ];

  final List<Map<String, dynamic>> mainFunctions = [
    {'icon': Icons.category, 'label': 'Danh mục', 'route': '/category'},
    {'icon': Icons.new_releases, 'label': 'Hàng mới', 'route': '/new-products'},
    {'icon': Icons.menu_book, 'label': 'Cẩm nang', 'route': '/guide'},
    {'icon': Icons.help_outline, 'label': 'Hỗ trợ', 'route': '/support'},
    {
      'icon': Icons.delivery_dining,
      'label': 'Giao 2H',
      'route': '/fast-delivery',
    },
  ];

  @override
  void initState() {
    super.initState();
    _bannerTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        _currentPage++;
        if (_currentPage >= banners.length) _currentPage = 0;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
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

  /// Flash Deals section
  Widget _buildFlashDealsSection(
    BuildContext context,
    List<Map<String, dynamic>> flashProducts,
  ) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );

    if (flashProducts.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Text('Không có sản phẩm Flash Deals'),
      );
    }

    return Container(
      color: Colors.orange[50],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Flash Deals',
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
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: flashProducts.length,
              itemBuilder: (context, index) {
                final product = flashProducts[index];
                final imageUrl = product['image'] ?? '';
                final name = product['name'] ?? '';
                final originalPrice =
                    (product['originalPrice'] as num?)?.toInt() ?? 0;
                final discountPrice =
                    (product['discountPrice'] as num?)?.toInt() ?? 0;
                final discountPercent =
                    (product['discountPercent'] as num?)?.toInt() ?? 0;
                final endTime =
                    product['endTime'] as int? ??
                    DateTime.now()
                        .add(const Duration(hours: 2))
                        .millisecondsSinceEpoch;
                final stockQuantity = (product['stockQuantity'] as int?) ?? 0;

                return InkWell(
                  onTap: () {
                    final p = Product.fromMap(product);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetailPage(product: p),
                      ),
                    );
                  },
                  child: Container(
                    width: 160,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16), // bo góc mềm
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 8, // độ mờ bóng
                          offset: const Offset(0, 4), // vị trí bóng
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(16),
                                ),
                                child: Image.network(
                                  imageUrl,
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => Container(
                                    height: 120,
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
                          const SizedBox(height: 6),
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
                            currencyFormatter.format(discountPrice),
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          // 🔥 Gom cụm giảm giá + thời gian + số lượng
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.local_offer,
                                    size: 14,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Giảm $discountPercent%',
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.green,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.timer,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(width: 4),
                                  CountdownTimer(
                                    endTime: endTime,
                                    widgetBuilder: (_, time) {
                                      if (time == null) {
                                        return const Text(
                                          'Khuyến mãi đã kết thúc',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        );
                                      }
                                      final days = time.days ?? 0;
                                      final hours = time.hours ?? 0;
                                      final minutes = time.min ?? 0;
                                      final seconds = time.sec ?? 0;

                                      return Text(
                                        '${days.toString().padLeft(2, '0')} ngày '
                                        '${hours.toString().padLeft(2, '0')} : '
                                        '${minutes.toString().padLeft(2, '0')} : '
                                        '${seconds.toString().padLeft(2, '0')}',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.inventory_2,
                                    size: 14,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Còn $stockQuantity sp',
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
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
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> generateFlashDeals(
    List<Map<String, dynamic>> products,
  ) {
    final List<Map<String, dynamic>> flashProducts = [];

    for (var product in products) {
      final originalPrice = (product['originalPrice'] as num?)?.toInt() ?? 0;
      final discountPrice = (product['discountPrice'] as num?)?.toInt() ?? 0;
      final stockQuantity = (product['stockQuantity'] as int?) ?? 0;

      if (originalPrice > discountPrice && discountPrice > 0) {
        final discountPercent =
            ((originalPrice - discountPrice) / originalPrice * 100).round();

        final promotionStart = DateTime.tryParse(
          product['promotionStart'] ?? '',
        );
        final promotionEnd = DateTime.tryParse(product['promotionEnd'] ?? '');

        if (promotionStart != null && promotionEnd != null) {
          // 👉 Điều kiện mới: chỉ lấy sản phẩm nếu thời gian kết thúc còn ở tương lai
          if (promotionEnd.isAfter(DateTime.now())) {
            final endTime = promotionEnd.millisecondsSinceEpoch;

            flashProducts.add({
              ...product,
              'originalPrice': originalPrice,
              'discountPrice': discountPrice,
              'discountPercent': discountPercent,
              'endTime': endTime,
              'stockQuantity': stockQuantity,
            });
          }
        }
      }
    }

    flashProducts.shuffle();
    return flashProducts.take(6).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ✅ Container xanh lá: tìm kiếm + banner + chức năng chính
            Container(
              color: Colors.green[50],
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                children: [
                  // 🔍 Thanh tìm kiếm
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/logo.jpg',
                          height: 32,
                          width: 32,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SearchPage(), // bỏ const
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
                            child: const Row(
                              children: [
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
                          Navigator.pushNamed(context, '/branch-info');
                        },
                      ),

                      // Nút giỏ hàng với badge
                      Consumer<CartProvider>(
                        builder: (context, cart, _) {
                          return Stack(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.shopping_cart_outlined),
                                tooltip: 'Giỏ hàng',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const CartPage(),
                                    ),
                                  );
                                },
                              ),
                              if (cart.totalItems > 0)
                                Positioned(
                                  right: 4,
                                  top: 4,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: Colors.pink,
                                      shape: BoxShape.circle,
                                    ),
                                    constraints: const BoxConstraints(
                                      minWidth: 20,
                                      minHeight: 20,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${cart.totalItems}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // 🖼️ Banner bo góc + tự động cuộn
                  SizedBox(
                    height: 160,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: banners.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
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

                  const SizedBox(height: 12),

                  // 🧭 Chức năng chính
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: mainFunctions.map((func) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          Navigator.pushNamed(context, func['route']);
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[100],
                              child: Icon(func['icon'], color: Colors.green),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              func['label'],
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 🌟 Flash Deals dùng FutureBuilder
            FutureBuilder<List<Map<String, dynamic>>>(
              future: Future.value(
                generateFlashDeals(productList),
              ), // không cần prefs
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return const Text('Lỗi khi tải dữ liệu Flash Deals');
                }

                if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Text('Không có sản phẩm Flash Deals');
                }

                final flashProducts = snapshot.data!;
                return _buildFlashDealsSection(context, flashProducts);
              },
            ),

            const SizedBox(height: 16),

            // 🛍️ Danh mục sản phẩm
            const CategoryMenu(),

            const SizedBox(height: 16),

            // 🔍 Gợi ý sản phẩm theo hành vi người dùng
            RecommendedProductsWidget(), // bỏ const nếu chưa có constructor const
          ],
        ),
      ),
    );
  }
}
