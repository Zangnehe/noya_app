// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class OrderDetailPage extends StatelessWidget {
//   const OrderDetailPage({super.key});

//   String formatCurrency(num amount) {
//     final formatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: '₫',
//       decimalDigits: 0,
//     );
//     return formatter.format(amount);
//   }

//   String formatDate(DateTime date) {
//     return DateFormat('dd/MM/yyyy HH:mm').format(date);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final data =
//         ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

//     final subtotal = data['subtotal'] ?? 0.0;
//     final tax = data['tax'] ?? 0.0;
//     final shippingFee = data['shippingFee'] ?? 0.0;
//     final discountPercent = (data['discountPercent'] ?? 0.0) * 100;
//     final finalTotal = data['finalTotal'] ?? 0.0;
//     final status = data['status'] ?? 'Đang xử lý';
//     final createdAt = data['createdAt'];
//     final branch = data['branch'] ?? '---';
//     final delivery = data['estimatedDelivery'] ?? '---';

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Chi tiết đơn hàng'),
//         backgroundColor: const Color(0xFFBFAF9B),
//         elevation: 4,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Header
//             Card(
//               elevation: 3,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(12),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Đơn hàng #${data['orderId'] ?? '---'}',
//                       style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     if (createdAt != null)
//                       Text(
//                         'Ngày đặt: ${formatDate((createdAt as Timestamp).toDate())}',
//                       ),
//                     Text('Chi nhánh: $branch'),
//                     Text('Giao hàng dự kiến: $delivery'),
//                     Text('Trạng thái: $status'),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Địa chỉ giao hàng
//             Card(
//               elevation: 3,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(12),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       '📍 Địa chỉ giao hàng',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.brown,
//                       ),
//                     ),
//                     const Divider(),
//                     Text('👤 Người nhận: ${data['receiverName'] ?? '---'}'),
//                     Text('📞 SĐT: ${data['receiverPhone'] ?? '---'}'),
//                     Text('🏠 Địa chỉ: ${data['address'] ?? '---'}'),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Sản phẩm
//             Card(
//               elevation: 3,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(12),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       '🛍 Sản phẩm',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.brown,
//                       ),
//                     ),
//                     const Divider(),
//                     ...List<Widget>.from(
//                       (data['items'] as List<dynamic>? ?? []).map((item) {
//                         final name = item['name'] ?? '---';
//                         final quantity = item['quantity'] ?? 1;
//                         final price =
//                             item['discountPrice'] ?? item['price'] ?? 0;
//                         final image = item['image'] ?? '';

//                         return ListTile(
//                           leading: image.isNotEmpty
//                               ? ClipRRect(
//                                   borderRadius: BorderRadius.circular(8),
//                                   child: Image.network(
//                                     image,
//                                     width: 50,
//                                     height: 50,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 )
//                               : const Icon(Icons.image_not_supported),
//                           title: Text(name),
//                           subtitle: Text('Số lượng: $quantity'),
//                           trailing: Text(
//                             formatCurrency((price as num) * (quantity as num)),
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.redAccent,
//                             ),
//                           ),
//                         );
//                       }),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Chi tiết thanh toán
//             Card(
//               elevation: 3,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(12),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       '💰 Chi tiết thanh toán',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.brown,
//                       ),
//                     ),
//                     const Divider(),
//                     Text('Giá sản phẩm: ${formatCurrency(subtotal)}'),
//                     Text('Thuế: ${formatCurrency(tax)}'),
//                     Text('Phí vận chuyển: ${formatCurrency(shippingFee)}'),
//                     Text('Giảm giá: $discountPercent%'),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Thành tiền: ${formatCurrency(finalTotal)}',
//                       style: const TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.redAccent,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),

//             // Nút hành động
//             Center(
//               child: Column(
//                 children: [
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       // Mua lại đơn này: chuyển sang CartPage với dữ liệu sản phẩm
//                       Navigator.pushNamed(
//                         context,
//                         '/cart',
//                         arguments: data['items'],
//                       );
//                     },
//                     icon: const Icon(Icons.shopping_cart),
//                     label: const Text('Mua lại đơn này'),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFFBFAF9B),
//                       foregroundColor: Colors.white,
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 24,
//                         vertical: 12,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       textStyle: const TextStyle(fontSize: 16),
//                       elevation: 4,
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       // Liên hệ hỗ trợ: có thể mở trang hỗ trợ hoặc hotline
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('📞 Vui lòng liên hệ hotline hỗ trợ'),
//                         ),
//                       );
//                     },
//                     icon: const Icon(Icons.support_agent),
//                     label: const Text('Liên hệ hỗ trợ'),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       foregroundColor: Colors.white,
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 24,
//                         vertical: 12,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       textStyle: const TextStyle(fontSize: 16),
//                       elevation: 4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../ProductDetailPage/product_detail_page.dart';
import '../models/product.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({super.key});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  Map<String, dynamic>? data;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
  }

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

  Future<void> cancelOrder(BuildContext context, String orderId) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xác nhận hủy đơn'),
        content: const Text('Bạn có chắc muốn hủy đơn hàng này không?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Không'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Hủy đơn'),
          ),
        ],
      ),
    );

    if (confirm == true) {
      final snapshot = await FirebaseFirestore.instance
          .collection('orders')
          .where('orderId', isEqualTo: orderId)
          .get();

      for (var doc in snapshot.docs) {
        await doc.reference.update({'status': 'cancelled'});
      }

      setState(() {
        data?['status'] = 'cancelled';
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('✅ Đã hủy đơn hàng'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Scaffold(
        body: Center(child: Text('❌ Không tìm thấy dữ liệu đơn hàng')),
      );
    }

    final subtotal = data?['subtotal'] ?? 0.0;
    final tax = data?['tax'] ?? 0.0;
    final shippingFee = data?['shippingFee'] ?? 0.0;
    final discountPercent = (data?['discountPercent'] ?? 0.0) * 100;
    final finalTotal = data?['finalTotal'] ?? 0.0;
    final status = data?['status'] ?? 'Đang xử lý';
    final createdAt = data?['createdAt'];
    final branch = data?['branch'] ?? '---';
    final delivery = data?['estimatedDelivery'] ?? '---';
    final distanceKm = data?['distanceKm'] ?? 0.0;

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
                      'Đơn hàng #${data?['orderId'] ?? '---'}',
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
                    Text('👤 Người nhận: ${data?['receiverName'] ?? '---'}'),
                    Text('📞 SĐT: ${data?['receiverPhone'] ?? '---'}'),
                    Text('🏠 Địa chỉ: ${data?['address'] ?? '---'}'),
                    Text('📏 Khoảng cách: ${distanceKm.toStringAsFixed(1)} km'),
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
                      (data?['items'] as List<dynamic>? ?? []).map((item) {
                        final product = Product.fromMap(
                          item as Map<String, dynamic>,
                        );

                        return ListTile(
                          leading: product.image.isNotEmpty
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    product.image,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : const Icon(Icons.image_not_supported),
                          title: Text(product.name),
                          subtitle: Text('Số lượng: ${product.quantity}'),
                          trailing: Text(
                            formatCurrency(
                              product.discountPrice ?? product.price,
                            ),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                          // 👇 Khi nhấn vào sản phẩm sẽ mở ProductDetailPage
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailPage(product: product),
                              ),
                            );
                          },
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
                    Text('Thuế (10%): ${formatCurrency(tax)}'),
                    Text(
                      'Phí vận chuyển: ${shippingFee != null ? formatCurrency(shippingFee) : '---'}',
                    ),
                    Text('Giảm giá: ${discountPercent.toStringAsFixed(0)}%'),
                    const SizedBox(height: 8),
                    Text(
                      '💳 Thành tiền: ${formatCurrency(finalTotal)}',
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
                  // ElevatedButton.icon(
                  //   onPressed: () {
                  //     Navigator.pushNamed(
                  //       context,
                  //       '/cart',
                  //       arguments: data?['items'],
                  //     );
                  //   },
                  //   icon: const Icon(Icons.shopping_cart),
                  //   label: const Text('Mua lại đơn này'),
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: const Color(0xFFBFAF9B),
                  //     foregroundColor: Colors.white,
                  //     padding: const EdgeInsets.symmetric(
                  //       horizontal: 24,
                  //       vertical: 12,
                  //     ),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(12),
                  //     ),
                  //     textStyle: const TextStyle(fontSize: 16),
                  //     elevation: 4,
                  //   ),
                  // ),
                  // const SizedBox(height: 12),
                  ElevatedButton.icon(
                    onPressed: () async {
                      if (status == 'pending') {
                        await cancelOrder(context, data?['orderId']);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('❌ Đơn hàng này không thể hủy'),
                            backgroundColor: Colors.orange,
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.cancel),
                    label: const Text('Hủy đơn hàng'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
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
