import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/product.dart';
import '../ProductDetailPage/product_detail_page.dart';
import '../product_data/product_data.dart'; // danh sách allProducts
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class RecommendedProductsWidget extends StatefulWidget {
  const RecommendedProductsWidget({Key? key}) : super(key: key);

  @override
  State<RecommendedProductsWidget> createState() =>
      _RecommendedProductsWidgetState();
}

class _RecommendedProductsWidgetState extends State<RecommendedProductsWidget> {
  List<Product> recommendedProducts = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadRecommendations();
  }

  Future<void> _loadRecommendations() async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList('searchHistory') ?? [];

    if (history.isEmpty) {
      setState(() {
        recommendedProducts = [];
        isLoading = false;
      });
      return;
    }

    final keyword = history.first.toLowerCase();

    final results = productList
        .where((p) {
          final name = p['name']?.toString().toLowerCase() ?? '';
          final desc = p['description']?.toString().toLowerCase() ?? '';
          return name.contains(keyword) || desc.contains(keyword);
        })
        .map((p) => Product.fromJson(p))
        .toList();

    setState(() {
      recommendedProducts = results;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (recommendedProducts.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Chưa có gợi ý nào từ lịch sử tìm kiếm',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    // Tính childAspectRatio động theo màn hình để tăng chiều cao ô
    final size = MediaQuery.of(context).size;
    final horizontalPadding = 16.0;
    final crossSpacing = 12.0;
    final itemWidth = (size.width - horizontalPadding * 2 - crossSpacing) / 2;
    final itemHeight = itemWidth * 1.7; // tăng chiều cao để chứa nội dung
    final childAspectRatio = itemWidth / itemHeight;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gợi ý sản phẩm theo từ khóa đã tìm (${recommendedProducts.length})',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recommendedProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: childAspectRatio, // dùng tỉ lệ động
              crossAxisSpacing: crossSpacing,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              final product = recommendedProducts[index];
              final originalPrice = product.originalPrice ?? product.price;
              final discountPrice = product.discountPrice;

              // Kiểm tra trạng thái giảm giá
              final isDiscountActive =
                  product.isDiscountActive == true &&
                  product.promotionStart != null &&
                  product.promotionEnd != null;

              final hasDiscount =
                  isDiscountActive &&
                  discountPrice != null &&
                  discountPrice < originalPrice;

              final currentPrice = hasDiscount ? discountPrice! : originalPrice;
              final discountPercent = hasDiscount
                  ? (((originalPrice - discountPrice!) / originalPrice) * 100)
                        .round()
                  : 0;

              final endTime = hasDiscount && product.promotionEnd != null
                  ? product.promotionEnd!.millisecondsSinceEpoch
                  : null;

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
                              if (hasDiscount)
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
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(height: 6),

                        Row(
                          children: [
                            if (hasDiscount)
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
                            if (hasDiscount) const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                currencyFormatter.format(currentPrice),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: hasDiscount
                                      ? Colors.red
                                      : ProductDetailPage.themeColor,
                                ),
                              ),
                            ),
                          ],
                        ),

                        if (hasDiscount)
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
                              ),
                            ),
                          ),

                        const SizedBox(height: 6),

                        if (hasDiscount && endTime != null)
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
        ],
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
