import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import 'cart_provider.dart';
import '../models/product.dart';
import '../ProductDetailPage/product_detail_page.dart';

String formatCurrency(double amount) {
  final formatter = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: '₫',
    decimalDigits: 0,
  );
  return formatter.format(amount);
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _discountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('🛒 Giỏ hàng (${cart.totalItems})'),
        backgroundColor: const Color(0xFFBFAF9B),
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {
              cart.clearCart();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('🗑️ Đã xóa toàn bộ giỏ hàng'),
                  backgroundColor: Colors.red.shade400,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: cart.items.isEmpty
          ? const Center(
              child: Text(
                'Giỏ hàng đang trống',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      final price = item.discountPrice ?? item.price;
                      final originalPrice = item.originalPrice ?? item.price;
                      final discountPercent =
                          (originalPrice > price && originalPrice > 0)
                          ? ((originalPrice - price) / originalPrice * 100)
                                .round()
                          : 0;
                      final endTime =
                          item.promotionEnd?.millisecondsSinceEpoch ??
                          DateTime.now()
                              .add(const Duration(hours: 2))
                              .millisecondsSinceEpoch;

                      return Dismissible(
                        key: Key(item.id),
                        direction: DismissDirection.horizontal,
                        onDismissed: (_) => cart.removeFromCart(index),
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 20),
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        secondaryBackground: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 20),
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    ProductDetailPage(product: item),
                              ),
                            );
                          },
                          child: Card(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                children: [
                                  // Checkbox chọn sản phẩm
                                  Checkbox(
                                    value: cart.selectedItemIds.contains(
                                      item.id,
                                    ),
                                    onChanged: (_) =>
                                        cart.toggleSelectItem(item.id),
                                    shape: const CircleBorder(),
                                    activeColor: const Color(0xFFBFAF9B),
                                  ),
                                  // Ảnh sản phẩm
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      item.image,
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                      errorBuilder: (_, __, ___) => const Icon(
                                        Icons.broken_image,
                                        size: 70,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  // Thông tin sản phẩm gọn
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.name,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Row(
                                          children: [
                                            if (discountPercent > 0)
                                              Text(
                                                formatCurrency(originalPrice),
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            const SizedBox(width: 6),
                                            Text(
                                              formatCurrency(price),
                                              style: const TextStyle(
                                                fontSize: 14,
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
                                              fontSize: 12,
                                              color: Colors.green,
                                            ),
                                          ),
                                        Text(
                                          'Tồn kho: ${item.stockQuantity}',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        CountdownTimer(
                                          endTime: endTime,
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Nút tăng/giảm số lượng
                                  Column(
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.remove_circle_outline,
                                        ),
                                        color: const Color(0xFFBFAF9B),
                                        onPressed: () =>
                                            cart.decreaseQuantity(index),
                                      ),
                                      Text('${item.quantity}'),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.add_circle_outline,
                                        ),
                                        color: const Color(0xFFBFAF9B),
                                        onPressed: () => cart.addToCart(item),
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
                // Nhập mã giảm giá
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: TextFormField(
                    controller: _discountController,
                    decoration: InputDecoration(
                      labelText: 'Mã giảm giá',
                      labelStyle: const TextStyle(color: Color(0xFFBFAF9B)),
                      suffixIcon: const Icon(
                        Icons.discount,
                        color: Color(0xFFBFAF9B),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFBFAF9B)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFBFAF9B),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF5EDE2),
                    ),
                    style: const TextStyle(color: Color(0xFF4A3F35)),
                    onFieldSubmitted: (code) {
                      final applied = cart.applyDiscountCode(code.trim());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            applied
                                ? '✅ Áp dụng mã giảm giá thành công'
                                : '❌ Mã không hợp lệ',
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: applied
                              ? const Color(
                                  0xFFBFAF9B,
                                ) // đồng bộ màu thành công
                              : Colors.red.shade400, // thất bại vẫn nổi bật
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Tổng kết
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5EDE2),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Giá gốc: ${formatCurrency(cart.subtotal)}'),
                      if (cart.discountPercent > 0)
                        Text(
                          'Giảm giá: -${(cart.discountPercent * 100).toInt()}%',
                          style: const TextStyle(color: Color(0xFFBFAF9B)),
                        ),
                      Text('Thuế (10%): ${formatCurrency(cart.tax)}'),
                      const SizedBox(height: 8),
                      Text(
                        'Tổng cộng: ${formatCurrency(cart.finalTotal)}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBFAF9B),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFBFAF9B),
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shadowColor: const Color(0xFFBFAF9B).withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: cart.selectedItemIds.isEmpty
                            ? null
                            : () => Navigator.pushNamed(context, '/address'),
                        icon: const Icon(Icons.payment),
                        label: const Text('Thanh toán'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
