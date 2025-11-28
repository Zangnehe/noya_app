import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

import '../models/product.dart';
import 'favorite_provider.dart';
import '../provider/cart_provider.dart';
import '../ProductDetailPage/product_detail_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  String _formatCurrency(double value) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );
    return formatter.format(value);
  }

  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<FavoriteProvider>(context);
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text(' Sản phẩm yêu thích'),
        backgroundColor: const Color(0xFFBFAF9B),
        elevation: 4,
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        child: favorites.favorites.isEmpty
            ? _buildEmptyState()
            : ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: favorites.favorites.length,
                itemBuilder: (context, index) {
                  final product = favorites.favorites[index];
                  final hasDiscount =
                      product.discountPrice != null &&
                      product.discountPrice! < product.price;
                  final displayedPrice = hasDiscount
                      ? product.discountPrice!
                      : product.price;

                  return Dismissible(
                    key: ValueKey(product.id),
                    direction: DismissDirection.horizontal,
                    background: _buildDismissBackground(
                      Alignment.centerLeft,
                      Icons.delete,
                    ),
                    secondaryBackground: _buildDismissBackground(
                      Alignment.centerRight,
                      Icons.delete,
                    ),
                    onDismissed: (_) {
                      favorites.removeFavorite(product.id);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            ' Đã bỏ ${product.name} khỏi yêu thích',
                          ),
                          backgroundColor: Colors.redAccent,
                        ),
                      );
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 6,
                      shadowColor: Colors.brown.withOpacity(0.3),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        splashColor: Colors.brown[100], // hiệu ứng sóng nước
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ProductDetailPage(product: product),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5DC), // nền be nhạt
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Hero(
                                tag: product.id,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    product.image,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, __, ___) => const Icon(
                                      Icons.broken_image,
                                      size: 60,
                                    ),
                                  ),
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
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      product.brand ?? '',
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        if (hasDiscount)
                                          Text(
                                            _formatCurrency(product.price),
                                            style: const TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        if (hasDiscount)
                                          const SizedBox(width: 6),
                                        Text(
                                          _formatCurrency(displayedPrice),
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: hasDiscount
                                                ? Colors.red
                                                : Colors.brown[700],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.shopping_cart,
                                      color: Colors.brown,
                                    ),
                                    onPressed: () {
                                      cart.addToCart(product);
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            '${product.name} đã thêm vào giỏ hàng',
                                          ),
                                          backgroundColor: Colors.brown,
                                        ),
                                      );
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.share,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {
                                      Share.share(
                                        'Xem sản phẩm ${product.name} tại link: ${product.image}',
                                      );
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      favorites.removeFavorite(product.id);
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            ' Đã bỏ ${product.name} khỏi yêu thích',
                                          ),
                                          backgroundColor: Colors.redAccent,
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
                    ),
                  );
                },
              ),
      ),
    );
  }

  Widget _buildDismissBackground(Alignment alignment, IconData icon) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.redAccent, Colors.orangeAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      alignment: alignment,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Icon(icon, color: Colors.white, size: 28),
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
