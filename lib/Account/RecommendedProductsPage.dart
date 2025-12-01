import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import '../models/product.dart';
import '../ProductDetailPage/product_detail_page.dart';
import '../product_data/product_data.dart';
import 'SkinIssue.dart';

class RecommendedProductsPage extends StatefulWidget {
  final List<String> selectedIssues;
  final double severity;

  const RecommendedProductsPage({
    super.key,
    required this.selectedIssues,
    required this.severity,
  });

  @override
  State<RecommendedProductsPage> createState() =>
      _RecommendedProductsPageState();
}

class _RecommendedProductsPageState extends State<RecommendedProductsPage> {
  String _searchQuery = '';
  String _sortOption = 'Mặc định';

  final _currencyFormatter = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: 'đ',
    decimalDigits: 0,
  );

  @override
  Widget build(BuildContext context) {
    const brandColor = Color(0xFFBFAF9B);

    var recommended = getRecommendedProductsForIssues(
      widget.selectedIssues,
      widget.severity,
    );

    var filtered = recommended.where((p) {
      if (_searchQuery.isNotEmpty &&
          !p.name.toLowerCase().contains(_searchQuery.toLowerCase()) &&
          !(p.description ?? '').toLowerCase().contains(
            _searchQuery.toLowerCase(),
          )) {
        return false;
      }
      return true;
    }).toList();

    if (_sortOption == 'Giá tăng dần') {
      filtered.sort((a, b) => a.effectivePrice.compareTo(b.effectivePrice));
    } else if (_sortOption == 'Giá giảm dần') {
      filtered.sort((a, b) => b.effectivePrice.compareTo(a.effectivePrice));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sản phẩm gợi ý'),
        backgroundColor: brandColor,
        actions: [
          DropdownButton<String>(
            value: _sortOption,
            underline: const SizedBox(),
            items: ['Mặc định', 'Giá tăng dần', 'Giá giảm dần']
                .map((opt) => DropdownMenuItem(value: opt, child: Text(opt)))
                .toList(),
            onChanged: (val) {
              setState(() {
                _sortOption = val ?? 'Mặc định';
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm sản phẩm mong muốn...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color(0xFFF5F5F5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (val) {
                setState(() {
                  _searchQuery = val;
                });
              },
            ),
          ),

          Expanded(
            child: filtered.isEmpty
                ? const Center(
                    child: Text(
                      'Không tìm thấy sản phẩm phù hợp',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      final product = filtered[index];

                      final productTags = [
                        ...(product.skinTypeTags ?? []),
                        ...(product.skinConcerns ?? []),
                      ];
                      final matchedTags = productTags
                          .where((tag) => widget.selectedIssues.contains(tag))
                          .toList();

                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ProductDetailPage(product: product),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(12),
                                      ),
                                      child: Image.network(
                                        product.image,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) =>
                                            const Icon(
                                              Icons.image_not_supported,
                                              size: 48,
                                              color: Colors.grey,
                                            ),
                                      ),
                                    ),
                                    if (product.isPromotionValid &&
                                        product.discountPercent > 0)
                                      Positioned(
                                        top: 8,
                                        right: 8,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 6,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                          child: Text(
                                            '-${product.discountPercent}%',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 6),

                                    if (matchedTags.isNotEmpty)
                                      Text(
                                        matchedTags.join(', '),
                                        style: const TextStyle(
                                          fontSize: 11,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),

                                    const SizedBox(height: 6),

                                    if (product.isPromotionValid &&
                                        product.discountPrice != null)
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                _currencyFormatter.format(
                                                  product.originalPrice ?? 0,
                                                ),
                                                style: const TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              const SizedBox(width: 6),
                                              Text(
                                                _currencyFormatter.format(
                                                  product.discountPrice ?? 0,
                                                ),
                                                style: const TextStyle(
                                                  color: Colors.pink,
                                                  fontWeight: FontWeight.bold,
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
                                                endTime:
                                                    product
                                                        .promotionEnd
                                                        ?.millisecondsSinceEpoch ??
                                                    0,
                                                widgetBuilder: (_, time) {
                                                  if (time == null) {
                                                    return const Text(
                                                      'Khuyến mãi đã kết thúc',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                        fontStyle:
                                                            FontStyle.italic,
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    else
                                      Text(
                                        _currencyFormatter.format(
                                          product.originalPrice ?? 0,
                                        ),
                                        style: const TextStyle(
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.inventory_2,
                                          size: 14,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          'Còn ${product.stockQuantity} sp',
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
