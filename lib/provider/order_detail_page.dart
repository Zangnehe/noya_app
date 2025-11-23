import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});

  String formatCurrency(num amount) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );
    return formatter.format(amount);
  }

  String formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy HH:mm').format(date);
  }

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final subtotal = data['subtotal'] ?? 0.0;
    final tax = data['tax'] ?? 0.0;
    final shippingFee = data['shippingFee'] ?? 0.0;
    final discountPercent = (data['discountPercent'] ?? 0.0) * 100;
    final finalTotal = data['finalTotal'] ?? 0.0;
    final status = data['status'] ?? 'Đang xử lý';
    final createdAt = data['createdAt'];
    final branch = data['branch'] ?? '---';
    final delivery = data['estimatedDelivery'] ?? '---';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết đơn hàng'),
        backgroundColor: const Color(0xFFBFAF9B),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Đơn hàng #${data['orderId'] ?? '---'}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (createdAt != null)
                      Text(
                        'Ngày đặt: ${formatDate((createdAt as Timestamp).toDate())}',
                      ),
                    Text('Chi nhánh: $branch'),
                    Text('Giao hàng dự kiến: $delivery'),
                    Text('Trạng thái: $status'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Địa chỉ giao hàng
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '📍 Địa chỉ giao hàng',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const Divider(),
                    Text('👤 Người nhận: ${data['receiverName'] ?? '---'}'),
                    Text('📞 SĐT: ${data['receiverPhone'] ?? '---'}'),
                    Text('🏠 Địa chỉ: ${data['address'] ?? '---'}'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Sản phẩm
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '🛍 Sản phẩm',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const Divider(),
                    ...List<Widget>.from(
                      (data['items'] as List<dynamic>? ?? []).map((item) {
                        final name = item['name'] ?? '---';
                        final quantity = item['quantity'] ?? 1;
                        final price =
                            item['discountPrice'] ?? item['price'] ?? 0;
                        final image = item['image'] ?? '';

                        return ListTile(
                          leading: image.isNotEmpty
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    image,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : const Icon(Icons.image_not_supported),
                          title: Text(name),
                          subtitle: Text('Số lượng: $quantity'),
                          trailing: Text(
                            formatCurrency((price as num) * (quantity as num)),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Chi tiết thanh toán
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '💰 Chi tiết thanh toán',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const Divider(),
                    Text('Giá sản phẩm: ${formatCurrency(subtotal)}'),
                    Text('Thuế: ${formatCurrency(tax)}'),
                    Text('Phí vận chuyển: ${formatCurrency(shippingFee)}'),
                    Text('Giảm giá: $discountPercent%'),
                    const SizedBox(height: 8),
                    Text(
                      'Thành tiền: ${formatCurrency(finalTotal)}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Nút hành động
            Center(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Mua lại đơn này: chuyển sang CartPage với dữ liệu sản phẩm
                      Navigator.pushNamed(
                        context,
                        '/cart',
                        arguments: data['items'],
                      );
                    },
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('Mua lại đơn này'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBFAF9B),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      textStyle: const TextStyle(fontSize: 16),
                      elevation: 4,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Liên hệ hỗ trợ: có thể mở trang hỗ trợ hoặc hotline
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('📞 Vui lòng liên hệ hotline hỗ trợ'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.support_agent),
                    label: const Text('Liên hệ hỗ trợ'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      textStyle: const TextStyle(fontSize: 16),
                      elevation: 4,
                    ),
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
