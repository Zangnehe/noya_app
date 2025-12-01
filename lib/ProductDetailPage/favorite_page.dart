import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../models/product.dart';
import 'favorite_provider.dart';
import '../provider/cart_provider.dart';
import '../ProductDetailPage/product_detail_page.dart';
import '../compare/comparepage.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final List<Product> selectedProducts = [];

  String _formatCurrency(double value) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );
    return formatter.format(value);
  }

  int? _discountPercent(Product p) {
    if (p.discountPrice == null) return null;
    final original = (p.originalPrice ?? p.price);
    final discounted = p.discountPrice!;
    if (discounted >= original || original <= 0) return null;
    final percent = ((original - discounted) / original * 100).round();
    return percent > 0 ? percent : null;
  }

  @override
  Widget build(BuildContext context) {
    const brandColor = Color(0xFFBFAF9B);

    final favoritesProvider = Provider.of<FavoriteProvider>(context);
    final cart = Provider.of<CartProvider>(context, listen: false);
    final favorites = favoritesProvider.favorites;
    final rawFavorites = favoritesProvider.rawFavorites;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sản phẩm yêu thích'),
        backgroundColor: brandColor,
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            tooltip: 'Xoá toàn bộ yêu thích',
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text("Xác nhận"),
                  content: const Text(
                    "Bạn có chắc muốn xoá toàn bộ danh sách yêu thích?",
                  ),
                  actions: [
                    TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.grey),
                      child: const Text("Hủy"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(foregroundColor: brandColor),
                      child: const Text("Xoá"),
                      onPressed: () {
                        favoritesProvider.resetFavorites();
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Đã xoá toàn bộ danh sách yêu thích"),
                            backgroundColor: brandColor,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: favorites.isEmpty
          ? _buildEmptyState()
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final product = favorites[index];
                final raw = rawFavorites[index];
                final addedAt = raw['addedAt'] != null
                    ? DateTime.tryParse(raw['addedAt'])
                    : null;

                final hasDiscount =
                    product.isDiscountActive &&
                    product.discountPrice != null &&
                    product.discountPrice! <
                        (product.originalPrice ?? product.price);
                final originalPrice = product.originalPrice ?? product.price;
                final displayedPrice = hasDiscount
                    ? product.discountPrice!
                    : originalPrice;
                final percent = _discountPercent(product);
                final isSelected = selectedProducts.any(
                  (p) => p.id == product.id,
                );

                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailPage(product: product),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  product.image,
                                  width: 110, // tăng kích thước ảnh
                                  height: 110,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) =>
                                      const Icon(Icons.broken_image, size: 60),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    if (hasDiscount)
                                      Text(
                                        _formatCurrency(originalPrice),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    Text(
                                      _formatCurrency(displayedPrice),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: hasDiscount
                                            ? Colors.red
                                            : Colors.brown[700],
                                      ),
                                    ),
                                    if (percent != null)
                                      Container(
                                        margin: const EdgeInsets.only(top: 4),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 6,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.red[50],
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          border: Border.all(
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                        child: Text(
                                          '-$percent%',
                                          style: const TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    const SizedBox(height: 6),
                                    if (addedAt != null)
                                      Text(
                                        "Thích: ${DateFormat('dd/MM/yyyy HH:mm').format(addedAt)}",
                                        style: const TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 11,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Checkbox(
                                value: isSelected,
                                activeColor: brandColor,
                                onChanged: (checked) {
                                  setState(() {
                                    if (checked == true) {
                                      if (selectedProducts.length < 3) {
                                        selectedProducts.add(product);
                                      } else {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              "Chỉ chọn tối đa 3 sản phẩm để so sánh",
                                            ),
                                            backgroundColor: brandColor,
                                          ),
                                        );
                                      }
                                    } else {
                                      selectedProducts.removeWhere(
                                        (p) => p.id == product.id,
                                      );
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.red,
                                  minimumSize: const Size(0, 30),
                                ),
                                icon: const Icon(Icons.favorite, size: 16),
                                label: const Text(
                                  "Hủy thích",
                                  style: TextStyle(fontSize: 12),
                                ),
                                onPressed: () {
                                  favoritesProvider.removeFavorite(product.id);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Đã hủy yêu thích"),
                                      backgroundColor: brandColor,
                                    ),
                                  );
                                },
                              ),
                              TextButton.icon(
                                style: TextButton.styleFrom(
                                  foregroundColor: brandColor, // đồng bộ màu
                                  minimumSize: const Size(0, 30),
                                ),
                                icon: const Icon(Icons.shopping_cart, size: 16),
                                label: const Text(
                                  "Mua",
                                  style: TextStyle(fontSize: 12),
                                ),
                                onPressed: () {
                                  cart.addToCart(product);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '${product.name} đã thêm vào giỏ hàng',
                                      ),
                                      backgroundColor:
                                          brandColor, // đồng bộ SnackBar
                                    ),
                                  );
                                },
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
      floatingActionButton: selectedProducts.length >= 2
          ? FloatingActionButton.extended(
              backgroundColor: brandColor, // đồng bộ màu nút So sánh
              foregroundColor: Colors.white, // tránh chữ màu tím mặc định
              icon: const Icon(Icons.compare, color: Colors.white),
              label: const Text("So sánh"),
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   const SnackBar(
                //     // content: Text("Đang mở trang so sánh"),
                //     // backgroundColor: brandColor, // đồng bộ SnackBar
                //   ),
                // );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ComparePage(
                      productA: selectedProducts[0],
                      productB: selectedProducts[1],
                      productC: selectedProducts.length == 3
                          ? selectedProducts[2]
                          : null,
                    ),
                  ),
                );
              },
            )
          : null,
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.favorite_border, size: 80, color: Colors.grey),
          SizedBox(height: 16),
          Text(
            'Chưa có sản phẩm nào trong mục yêu thích',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
