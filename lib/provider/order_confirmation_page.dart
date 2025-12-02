import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderConfirmationPage extends StatefulWidget {
  const OrderConfirmationPage({super.key});

  @override
  State<OrderConfirmationPage> createState() => _OrderConfirmationPageState();
}

class _OrderConfirmationPageState extends State<OrderConfirmationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  Map<String, dynamic>? orderData;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final orderId = ModalRoute.of(context)?.settings.arguments as String?;
    if (orderId != null) {
      fetchOrder(orderId);
    }
  }

  Future<void> fetchOrder(String orderId) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('orders')
        .where('orderId', isEqualTo: orderId)
        .limit(1)
        .get();

    if (snapshot.docs.isNotEmpty) {
      setState(() {
        orderData = snapshot.docs.first.data();
        loading = false;
      });
    } else {
      setState(() => loading = false);
    }
  }

  String formatCurrency(num amount) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );
    return formatter.format(amount);
  }

  String formatDate(Timestamp? timestamp) {
    if (timestamp == null) return '---';
    final date = timestamp.toDate();
    return DateFormat('dd/MM/yyyy HH:mm').format(date);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final status = orderData?['status'] ?? 'pending';

    IconData icon;
    Color color;
    String statusText;

    switch (status) {
      case 'paid':
        icon = Icons.check_circle;
        color = Colors.green;
        statusText = 'Đơn hàng đã được thanh toán!';
        break;
      case 'cancelled':
        icon = Icons.cancel;
        color = Colors.red;
        statusText = 'Đơn hàng đã bị hủy';
        break;
      default:
        icon = Icons.hourglass_top;
        color = Colors.orange;
        statusText = 'Đơn hàng đang chờ xử lý...';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('✅ Xác nhận đơn hàng'),
        backgroundColor: const Color(0xFFBFAF9B),
        elevation: 4,
      ),
      body: FadeTransition(
        opacity: _fade,
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : orderData == null
            ? const Center(child: Text('❌ Không tìm thấy đơn hàng'))
            : SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Trạng thái đơn hàng
                    Center(child: Icon(icon, color: color, size: 80)),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        statusText,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Center(
                      child: Text(
                        'Mã đơn hàng: ${orderData?['orderId']}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Thời gian tạo: ${formatDate(orderData?['createdAt'])}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const Divider(height: 32),

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
                            Text(
                              '👤 Người nhận: ${orderData?['receiverName'] ?? '---'}',
                            ),
                            Text(
                              '📞 SĐT: ${orderData?['receiverPhone'] ?? '---'}',
                            ),
                            Text(
                              '🏠 Địa chỉ: ${orderData?['address'] ?? '---'}',
                            ),
                            Text(
                              '🏬 Chi nhánh: ${orderData?['branch'] ?? '---'}',
                            ),
                            Text(
                              '🚚 Giao hàng dự kiến: ${orderData?['estimatedDelivery'] ?? '---'}',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Sản phẩm đã đặt
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
                              '🛍 Sản phẩm đã đặt',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            const Divider(),
                            ...List<Widget>.from(
                              (orderData?['items'] as List<dynamic>? ?? []).map(
                                (item) {
                                  final name = item['name'] ?? '---';
                                  final quantity = item['quantity'] ?? 1;
                                  final price =
                                      item['discountPrice'] ?? item['price'];
                                  final image = item['image'] ?? '';

                                  return ListTile(
                                    leading: image.isNotEmpty
                                        ? ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
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
                                      formatCurrency(
                                        (price as num) * (quantity as num),
                                      ),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

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
                            Text(
                              'Giá sản phẩm: ${formatCurrency(orderData?['subtotal'] ?? 0)}',
                            ),
                            Text(
                              'Thuế (10%): ${formatCurrency(orderData?['tax'] ?? 0)}',
                            ),
                            Text(
                              'Giảm giá: ${(orderData?['discountPercent'] ?? 0) * 100}%',
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Thành tiền: ${formatCurrency(orderData?['finalTotal'] ?? 0)}',
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
                            onPressed: () =>
                                Navigator.pushNamed(context, '/history'),
                            icon: const Icon(Icons.receipt),
                            label: const Text('Xem lịch sử đơn hàng'),
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
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton.icon(
                            onPressed: () => Navigator.popUntil(
                              context,
                              ModalRoute.withName('/'),
                            ),
                            icon: const Icon(Icons.home),
                            label: const Text('Về trang chủ'),
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
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              elevation: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
