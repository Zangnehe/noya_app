// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

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

//     // ✅ Đặt mặc định COD sau khi build xong
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       final cart = Provider.of<CartProvider>(context, listen: false);
//       cart.setPaymentMethod('COD');
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _noteController.dispose();
//     _noteFocus.dispose();
//     super.dispose();
//   }

//   String formatCurrency(num amount) {
//     final formatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: '₫',
//       decimalDigits: 0,
//     );
//     return formatter.format(amount);
//   }

//   String branchAddress(String? branchLabel) {
//     switch (branchLabel) {
//       case 'Chi nhánh Quận 1':
//         return 'Chi nhánh Quận 1 - 123 Lê Lợi, Q1, TP.HCM';
//       case 'Chi nhánh Bình Thạnh':
//         return 'Chi nhánh Bình Thạnh - 45 Điện Biên Phủ, Bình Thạnh, TP.HCM';
//       case 'Chi nhánh Gò Vấp':
//         return 'Chi nhánh Gò Vấp - 67 Quang Trung, Gò Vấp, TP.HCM';
//       default:
//         return 'Chưa chọn chi nhánh';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);

//     // ✅ Tính khoảng cách nếu có đủ dữ liệu
//     String distanceText = '---';
//     if (cart.selectedAddress?.lat != null &&
//         cart.selectedAddress?.lng != null &&
//         cart.branchLat != null &&
//         cart.branchLng != null) {
//       final km = cart.calculateDistanceKm(
//         cart.selectedAddress!.lat!,
//         cart.selectedAddress!.lng!,
//         cart.branchLat!,
//         cart.branchLng!,
//       );
//       distanceText = '${km.toStringAsFixed(1)} km';
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('💳 Xác nhận thanh toán'),
//         backgroundColor: const Color(0xFFBFAF9B),
//         elevation: 4,
//       ),
//       body: FadeTransition(
//         opacity: _fade,
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               // Địa chỉ giao hàng
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         '📍 Địa chỉ giao hàng',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.brown,
//                         ),
//                       ),
//                       const Divider(),
//                       Text(
//                         '👤 Người nhận: ${cart.selectedAddress?.receiverName ?? '---'}',
//                       ),
//                       Text('📞 SĐT: ${cart.selectedAddress?.phone ?? '---'}'),
//                       Text(
//                         '🏠 Địa chỉ: ${cart.selectedAddress?.fullAddress ?? 'Chưa nhập'}',
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Sản phẩm đã chọn
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         '🛒 Sản phẩm đã chọn',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.brown,
//                         ),
//                       ),
//                       const Divider(),
//                       AnimatedSwitcher(
//                         duration: const Duration(milliseconds: 300),
//                         child: Column(
//                           key: ValueKey(cart.selectedItems.length),
//                           children: cart.selectedItems.map((item) {
//                             final itemTotal =
//                                 (item.discountPrice ?? item.price) *
//                                 item.quantity;
//                             return ListTile(
//                               leading: ClipRRect(
//                                 borderRadius: BorderRadius.circular(8),
//                                 child: Image.network(
//                                   item.image,
//                                   width: 60,
//                                   height: 60,
//                                   fit: BoxFit.cover,
//                                   errorBuilder: (_, __, ___) =>
//                                       const Icon(Icons.image_not_supported),
//                                 ),
//                               ),
//                               title: Text(
//                                 item.name,
//                                 style: const TextStyle(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               subtitle: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text('Số lượng: ${item.quantity}'),
//                                   Text(
//                                     'Đơn giá: ${formatCurrency(item.discountPrice ?? item.price)}',
//                                   ),
//                                 ],
//                               ),
//                               trailing: Text(
//                                 formatCurrency(itemTotal),
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.redAccent,
//                                 ),
//                               ),
//                             );
//                           }).toList(),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Lời nhắn
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         '📝 Lời nhắn',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.brown,
//                         ),
//                       ),
//                       const Divider(),
//                       TextFormField(
//                         controller: _noteController,
//                         focusNode: _noteFocus,
//                         maxLength: _maxNoteLength,
//                         maxLines: 3,
//                         decoration: const InputDecoration(
//                           labelText: 'Ghi chú cho đơn hàng',
//                           border: OutlineInputBorder(),
//                           prefixIcon: Icon(Icons.note_alt),
//                         ),
//                         onChanged: (value) => cart.setNote(value),
//                       ),
//                       const SizedBox(height: 8),
//                       Text('Lời nhắn: ${cart.orderNote ?? 'Không có'}'),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Vận chuyển & Voucher
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         '🚚 Vận chuyển & Voucher',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.brown,
//                         ),
//                       ),
//                       const Divider(),
//                       Text(
//                         '🎟 Voucher: ${cart.discountCode ?? 'Không áp dụng'}',
//                       ),
//                       Text('🚚 Phương thức: ${cart.paymentMethod}'),
//                       Text('🏬 Chi nhánh: ${branchAddress(cart.branchLabel)}'),
//                       Text('⏱ Dự kiến: ${cart.estimatedDelivery ?? '---'}'),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Chi tiết thanh toán
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         '💰 Chi tiết thanh toán',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.brown,
//                         ),
//                       ),
//                       const Divider(),
//                       Text('Giá sản phẩm: ${formatCurrency(cart.subtotal)}'),
//                       Text('Thuế (10%): ${formatCurrency(cart.tax)}'),
//                       Text(
//                         'Phí vận chuyển: ${formatCurrency(cart.shippingFee)}',
//                       ),
//                       Text('Khoảng cách: $distanceText'),
//                       Text(
//                         'Giảm giá: ${(cart.discountPercent * 100).toStringAsFixed(0)}%',
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         '💳 Thành tiền: ${formatCurrency(cart.finalTotal)}',
//                         style: const TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.redAccent,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // Nút xác nhận thanh toán
//               Center(
//                 child: ElevatedButton.icon(
//                   onPressed: _isSubmitting
//                       ? null
//                       : () async {
//                           // ✅ Kiểm tra dữ liệu trước khi submit
//                           if (cart.selectedAddress == null) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text(
//                                   '⚠️ Vui lòng chọn địa chỉ giao hàng',
//                                 ),
//                                 backgroundColor: Colors.orange,
//                               ),
//                             );
//                             return;
//                           }
//                           if (cart.branchLabel == null) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('⚠️ Vui lòng chọn chi nhánh'),
//                                 backgroundColor: Colors.orange,
//                               ),
//                             );
//                             return;
//                           }

//                           setState(() => _isSubmitting = true);
//                           final orderId = await cart.submitOrder();
//                           if (!mounted) return;
//                           if (orderId == null) {
//                             setState(() => _isSubmitting = false);
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('❌ Không thể tạo đơn hàng.'),
//                                 backgroundColor: Colors.red,
//                               ),
//                             );
//                             return;
//                           }
//                           Navigator.pushNamed(
//                             context,
//                             '/order-confirm',
//                             arguments: orderId,
//                           ).then((_) {
//                             if (mounted) setState(() => _isSubmitting = false);
//                           });
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
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 40,
//                       vertical: 14,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     elevation: 4,
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
import '../models/user_address.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final cart = Provider.of<CartProvider>(context, listen: false);
      cart.setPaymentMethod('COD'); // mặc định COD
    });
  }

  @override
  void dispose() {
    _controller.dispose();
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

    // ✅ Tính khoảng cách nếu có đủ dữ liệu
    String distanceText = '---';
    if (cart.selectedAddress?.lat != null &&
        cart.selectedAddress?.lng != null &&
        cart.branchLat != null &&
        cart.branchLng != null) {
      final km = cart.calculateDistanceKm(
        cart.selectedAddress!.lat!,
        cart.selectedAddress!.lng!,
        cart.branchLat!,
        cart.branchLng!,
      );
      distanceText = '${km.toStringAsFixed(1)} km';
    }

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
              _buildAddressCard(cart),
              const SizedBox(height: 20),
              _buildItemsCard(cart),
              const SizedBox(height: 20),
              _buildShippingCard(cart, distanceText),
              const SizedBox(height: 20),
              _buildPaymentCard(cart),
              const SizedBox(height: 30),
              _buildConfirmButton(cart),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddressCard(CartProvider cart) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
    );
  }

  Widget _buildItemsCard(CartProvider cart) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
            Column(
              children: cart.selectedItems.map((item) {
                final itemTotal =
                    (item.discountPrice ?? item.price) * item.quantity;
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      item.image,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) =>
                          const Icon(Icons.image_not_supported),
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
                      Text('Số lượng: ${item.quantity}'),
                      Text(
                        'Đơn giá: ${formatCurrency(item.discountPrice ?? item.price)}',
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
          ],
        ),
      ),
    );
  }

  Widget _buildShippingCard(CartProvider cart, String distanceText) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
            Text('🎟 Voucher: ${cart.discountCode ?? 'Không áp dụng'}'),
            Text('🚚 Phương thức: ${cart.paymentMethod}'),
            Text('🏬 Chi nhánh: ${branchAddress(cart.branchLabel)}'),
            Text('⏱ Dự kiến: ${cart.estimatedDelivery ?? '---'}'),
            Text('📏 Khoảng cách: $distanceText'),
            Text('📦 Phí vận chuyển: ${formatCurrency(cart.shippingFee)}'),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentCard(CartProvider cart) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
            Text('Phí vận chuyển: ${formatCurrency(cart.shippingFee)}'),
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
    );
  }

  Widget _buildConfirmButton(CartProvider cart) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: _isSubmitting
            ? null
            : () async {
                if (cart.selectedAddress == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('⚠️ Vui lòng chọn địa chỉ giao hàng'),
                      backgroundColor: Colors.orange,
                    ),
                  );
                  return;
                }
                if (cart.branchLabel == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('⚠️ Vui lòng chọn chi nhánh'),
                      backgroundColor: Colors.orange,
                    ),
                  );
                  return;
                }

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
        label: Text(_isSubmitting ? 'Đang xử lý...' : 'Xác nhận thanh toán'),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFBFAF9B),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
      ),
    );
  }
}
