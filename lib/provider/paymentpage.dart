// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:intl/intl.dart';
// import '../provider/cart_provider.dart';

// class PaymentPage extends StatefulWidget {
//   const PaymentPage({super.key});

//   @override
//   State<PaymentPage> createState() => _PaymentPageState();
// }

// class _PaymentPageState extends State<PaymentPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fade;
//   final _noteController = TextEditingController();
//   final _noteFocus = FocusNode();
//   bool _isSubmitting = false;
//   final int _maxNoteLength = 200;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );
//     _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//     _controller.forward();

//     Future.delayed(const Duration(milliseconds: 600), () {
//       if (mounted) FocusScope.of(context).requestFocus(_noteFocus);
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _noteController.dispose();
//     _noteFocus.dispose();
//     super.dispose();
//   }

//   double? branchLat;
//   double? branchLng;
//   double _deg2rad(double deg) => deg * pi / 180;

//   double calculateDistanceKm(
//     double lat1,
//     double lng1,
//     double lat2,
//     double lng2,
//   ) {
//     const earthRadius = 6371; // km
//     final dLat = _deg2rad(lat2 - lat1);
//     final dLng = _deg2rad(lng2 - lng1);

//     final a =
//         sin(dLat / 2) * sin(dLat / 2) +
//         cos(_deg2rad(lat1)) *
//             cos(_deg2rad(lat2)) *
//             sin(dLng / 2) *
//             sin(dLng / 2);

//     final c = 2 * atan2(sqrt(a), sqrt(1 - a));
//     return earthRadius * c;
//   }

//   double calculateShippingFee(double distanceKm) {
//     if (distanceKm < 5) return 25000;
//     if (distanceKm < 20) return 40000;
//     if (distanceKm < 100) return 60000;
//     return 80000;
//   }

//   String formatCurrency(num amount) {
//     final formatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: '₫',
//       decimalDigits: 0,
//     );
//     return formatter.format(amount);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);

//     // Mặc định chọn COD nếu chưa có
//     if (cart.selectedPaymentMethod == null) {
//       cart.setPaymentMethod('COD');
//     }

//     // Tính khoảng cách thực tế
//     final lat1 = cart.userLat ?? 0;
//     final lng1 = cart.userLng ?? 0;
//     final lat2 = cart.branchLat ?? 0;
//     final lng2 = cart.branchLng ?? 0;

//     final distanceKm = calculateDistanceKm(lat1, lng1, lat2, lng2);
//     final shippingFee = calculateShippingFee(distanceKm);
//     final total = cart.finalTotal + shippingFee;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Phương thức thanh toán'),
//         backgroundColor: const Color(0xFFBFAF9B),
//       ),
//       body: FadeTransition(
//         opacity: _fade,
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               const Text(
//                 'Chọn phương thức thanh toán:',
//                 style: TextStyle(fontSize: 16),
//               ),
//               const SizedBox(height: 12),
//               RadioListTile(
//                 value: 'COD',
//                 groupValue: cart.selectedPaymentMethod,
//                 onChanged: (value) => cart.setPaymentMethod(value!),
//                 title: const Text('Thanh toán khi nhận hàng'),
//                 secondary: const Icon(Icons.money),
//               ),
//               const Divider(height: 32),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('📍 Địa chỉ: ${cart.address ?? 'Chưa nhập'}'),
//                     const SizedBox(height: 4),
//                     Text('🏬 Chi nhánh: ${cart.branchLabel ?? 'Chưa chọn'}'),
//                     Text(
//                       '🚚 Giao hàng dự kiến: ${cart.estimatedDelivery ?? '---'}',
//                     ),
//                     const SizedBox(height: 4),
//                     if (cart.discountCode != null)
//                       Text(
//                         '🏷 Mã giảm giá: ${cart.discountCode} (-${(cart.discountPercent * 100).toInt()}%)',
//                       ),
//                     const SizedBox(height: 8),
//                     Text('Giá sản phẩm: ${formatCurrency(cart.finalTotal)}'),
//                     Text('Phí vận chuyển: ${formatCurrency(shippingFee)}'),
//                     const SizedBox(height: 4),
//                     Text(
//                       'Tổng cộng: ${formatCurrency(total)}',
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFFBFAF9B),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextFormField(
//                 controller: _noteController,
//                 focusNode: _noteFocus,
//                 maxLength: _maxNoteLength,
//                 maxLines: 3,
//                 decoration: InputDecoration(
//                   labelText: 'Ghi chú cho đơn hàng',
//                   border: const OutlineInputBorder(),
//                   prefixIcon: const Icon(Icons.note_alt),
//                   counterText:
//                       '${_maxNoteLength - _noteController.text.length} ký tự còn lại',
//                 ),
//                 onChanged: (value) {
//                   cart.setNote(value);
//                   setState(() {});
//                 },
//               ),
//               const SizedBox(height: 30),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton.icon(
//                   onPressed: cart.selectedPaymentMethod == null || _isSubmitting
//                       ? null
//                       : () async {
//                           setState(() => _isSubmitting = true);
//                           final orderId = await cart.submitOrder();
//                           if (!mounted) return;

//                           if (orderId == null) {
//                             setState(() => _isSubmitting = false);
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text(
//                                   'Không thể tạo đơn hàng. Vui lòng kiểm tra lại thông tin.',
//                                 ),
//                               ),
//                             );
//                             return;
//                           }

//                           Navigator.pushNamed(
//                             context,
//                             '/order-confirm',
//                             arguments: orderId,
//                           );
//                         },
//                   icon: _isSubmitting
//                       ? const SizedBox(
//                           width: 20,
//                           height: 20,
//                           child: CircularProgressIndicator(
//                             strokeWidth: 2,
//                             color: Colors.white,
//                           ),
//                         )
//                       : const Icon(Icons.check_circle),
//                   label: Text(
//                     _isSubmitting ? 'Đang xử lý...' : 'Xác nhận thanh toán',
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFBFAF9B),
//                     padding: const EdgeInsets.symmetric(vertical: 14),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     textStyle: const TextStyle(fontSize: 16),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  final _noteController = TextEditingController();
  final _noteFocus = FocusNode();
  bool _isSubmitting = false;
  final int _maxNoteLength = 200;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _noteController.dispose();
    _noteFocus.dispose();
    super.dispose();
  }

  String formatCurrency(num amount) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );
    return formatter.format(amount);
  }

  String branchAddress(String? branchLabel) {
    switch (branchLabel) {
      case 'Chi nhánh Quận 1':
        return 'Chi nhánh Quận 1 - 123 Lê Lợi, Q1, TP.HCM';
      case 'Chi nhánh Bình Thạnh':
        return 'Chi nhánh Bình Thạnh - 45 Điện Biên Phủ, Bình Thạnh, TP.HCM';
      case 'Chi nhánh Gò Vấp':
        return 'Chi nhánh Gò Vấp - 67 Quang Trung, Gò Vấp, TP.HCM';
      default:
        return 'Chưa chọn chi nhánh';
    }
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    // Luôn mặc định COD
    cart.setPaymentMethod('COD');

    return Scaffold(
      appBar: AppBar(
        title: const Text('💳 Xác nhận thanh toán'),
        backgroundColor: const Color(0xFFBFAF9B),
        elevation: 4,
      ),
      body: FadeTransition(
        opacity: _fade,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Địa chỉ giao hàng
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
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
                        '👤 Người nhận: ${cart.selectedAddress?.receiverName ?? '---'}',
                      ),
                      Text('📞 SĐT: ${cart.selectedAddress?.phone ?? '---'}'),
                      Text(
                        '🏠 Địa chỉ: ${cart.selectedAddress?.fullAddress ?? 'Chưa nhập'}',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Sản phẩm đã mua
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '🛒 Sản phẩm đã chọn',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      const Divider(),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: Column(
                          key: ValueKey(cart.selectedItems.length),
                          children: cart.selectedItems.map((item) {
                            final itemTotal =
                                (item.discountPrice ?? item.price) *
                                item.quantity;
                            return ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  item.image,
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => const Icon(
                                    Icons.image_not_supported,
                                    size: 40,
                                  ),
                                ),
                              ),
                              title: Text(
                                item.name,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Số lượng: ${item.quantity}',
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'Đơn giá: ${formatCurrency(item.discountPrice ?? item.price)}',
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              trailing: Text(
                                formatCurrency(itemTotal),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Lời nhắn
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '📝 Lời nhắn',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      const Divider(),
                      TextFormField(
                        controller: _noteController,
                        focusNode: _noteFocus,
                        maxLength: _maxNoteLength,
                        maxLines: 3,
                        decoration: const InputDecoration(
                          labelText: 'Ghi chú cho đơn hàng',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.note_alt),
                        ),
                        onChanged: (value) => cart.setNote(value),
                      ),
                      const SizedBox(height: 8),
                      Text('Lời nhắn: ${cart.orderNote ?? 'Không có'}'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Thông tin vận chuyển & voucher
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '🚚 Vận chuyển & Voucher',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      const Divider(),
                      Text(
                        '🎟 Voucher: ${cart.discountCode ?? 'Không áp dụng'}',
                      ),
                      Text('🚚 Phương thức: ${cart.paymentMethod}'),
                      Text('🏬 Chi nhánh: ${branchAddress(cart.branchLabel)}'),
                      Text('⏱ Dự kiến: ${cart.estimatedDelivery ?? '---'}'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Chi tiết thanh toán
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
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
                      Text('Giá sản phẩm: ${formatCurrency(cart.subtotal)}'),
                      Text('Thuế (10%): ${formatCurrency(cart.tax)}'),
                      Text(
                        'Phí vận chuyển: ${formatCurrency(cart.shippingFee)}',
                      ),
                      Text(
                        'Giảm giá: ${(cart.discountPercent * 100).toStringAsFixed(0)}%',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '💳 Thành tiền: ${formatCurrency(cart.finalTotal)}',
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

              // Nút xác nhận thanh toán
              Center(
                child: ElevatedButton.icon(
                  onPressed: _isSubmitting
                      ? null
                      : () async {
                          setState(() => _isSubmitting = true);
                          final orderId = await cart.submitOrder();
                          if (!mounted) return;
                          if (orderId == null) {
                            setState(() => _isSubmitting = false);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('❌ Không thể tạo đơn hàng.'),
                                backgroundColor: Colors.red,
                              ),
                            );
                            return;
                          }
                          Navigator.pushNamed(
                            context,
                            '/order-confirm',
                            arguments: orderId,
                          ).then((_) {
                            if (mounted) setState(() => _isSubmitting = false);
                          });
                        },
                  icon: _isSubmitting
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Icon(Icons.check_circle),
                  label: Text(
                    _isSubmitting ? 'Đang xử lý...' : 'Xác nhận thanh toán',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBFAF9B),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
