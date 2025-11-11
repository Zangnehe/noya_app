import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../provider/cart_provider.dart';

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
        title: Text('Giỏ hàng (${cart.totalItems})'),
        backgroundColor: const Color(0xFFBFAF9B),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {
              cart.clearCart();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Đã xóa toàn bộ giỏ hàng')),
              );
            },
          ),
        ],
      ),
      body: cart.items.isEmpty
          ? const Center(
              child: Text(
                'Giỏ hàng đang trống',
                style: TextStyle(fontSize: 16),
              ),
            )
          : Column(
              children: [
                if (cart.selectedBranch != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chi nhánh giao hàng: ${cart.selectedBranch}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Thời gian giao hàng dự kiến: ${cart.deliveryTime ?? '---'}',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      final price = item.discountPrice ?? item.price;
                      final hasDiscount = item.discountPrice != null;

                      return AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: Card(
                          key: ValueKey(item.id),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Hero(
                                  tag: item.id,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      item.image,
                                      width: 60,
                                      height: 60,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        item.brand,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          if (hasDiscount)
                                            Text(
                                              formatCurrency(item.price),
                                              style: const TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.grey,
                                                fontSize: 13,
                                              ),
                                            ),
                                          const SizedBox(width: 6),
                                          Text(
                                            formatCurrency(price),
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.remove_circle_outline,
                                      ),
                                      onPressed: () =>
                                          cart.decreaseQuantity(index),
                                    ),
                                    Text('${item.quantity}'),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                      ),
                                      onPressed: () => cart.addToCart(item),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      onPressed: () =>
                                          cart.removeFromCart(index),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    controller: _discountController,
                    decoration: const InputDecoration(
                      labelText: 'Mã giảm giá',
                      suffixIcon: Icon(Icons.discount),
                    ),
                    onFieldSubmitted: (code) {
                      cart.applyDiscountCode(code.trim());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            cart.discountPercent > 0
                                ? 'Áp dụng mã giảm giá thành công'
                                : 'Mã không hợp lệ',
                          ),
                        ),
                      );
                    },
                  ),
                ),
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
                        ),
                      Text(
                        'Phí vận chuyển: ${formatCurrency(cart.shippingFee)}',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Tổng cộng: ${formatCurrency(cart.totalPrice + cart.shippingFee)}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBFAF9B),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/address');
                        },
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text('Tiếp tục đặt hàng'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFBFAF9B),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
