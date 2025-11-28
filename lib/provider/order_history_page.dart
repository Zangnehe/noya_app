// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:intl/intl.dart';
// import 'package:fl_chart/fl_chart.dart';

// class OrderHistoryPage extends StatefulWidget {
//   const OrderHistoryPage({super.key});

//   @override
//   State<OrderHistoryPage> createState() => _OrderHistoryPageState();
// }

// class _OrderHistoryPageState extends State<OrderHistoryPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fade;
//   Map<String, int> monthlyOrderCount = {};
//   String? mostUsedBranch;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );
//     _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//     _controller.forward();
//     fetchStats();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
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

//   String formatDate(Timestamp timestamp) {
//     final date = timestamp.toDate();
//     return DateFormat('dd/MM/yyyy HH:mm').format(date);
//   }

//   Future<void> fetchStats() async {
//     final user = FirebaseAuth.instance.currentUser;
//     if (user == null) return;

//     final snapshot = await FirebaseFirestore.instance
//         .collection('orders')
//         .where('userId', isEqualTo: user.uid)
//         .get();

//     final Map<String, int> branchCount = {};
//     final Map<String, int> monthCount = {};

//     for (var doc in snapshot.docs) {
//       final data = doc.data();
//       final branch = data['branch'] ?? '---';
//       final createdAt = (data['createdAt'] as Timestamp?)?.toDate();
//       if (createdAt != null) {
//         final key = DateFormat('MM/yyyy').format(createdAt);
//         monthCount[key] = (monthCount[key] ?? 0) + 1;
//       }
//       branchCount[branch] = (branchCount[branch] ?? 0) + 1;
//     }

//     setState(() {
//       monthlyOrderCount = monthCount;
//       if (branchCount.isNotEmpty) {
//         mostUsedBranch = branchCount.entries
//             .reduce((a, b) => a.value > b.value ? a : b)
//             .key;
//       }
//     });
//   }

//   Widget buildChart() {
//     final months = monthlyOrderCount.keys.toList()..sort();
//     final values = months.map((m) => monthlyOrderCount[m]!.toDouble()).toList();

//     return SizedBox(
//       height: 200,
//       child: BarChart(
//         BarChartData(
//           alignment: BarChartAlignment.spaceAround,
//           titlesData: FlTitlesData(
//             leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
//             bottomTitles: AxisTitles(
//               sideTitles: SideTitles(
//                 showTitles: true,
//                 getTitlesWidget: (value, _) {
//                   final index = value.toInt();
//                   if (index >= 0 && index < months.length) {
//                     return Text(
//                       months[index],
//                       style: const TextStyle(fontSize: 10),
//                     );
//                   }
//                   return const SizedBox.shrink();
//                 },
//               ),
//             ),
//           ),
//           barGroups: List.generate(months.length, (i) {
//             return BarChartGroupData(
//               x: i,
//               barRods: [
//                 BarChartRodData(toY: values[i], color: Colors.brown, width: 16),
//               ],
//             );
//           }),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final user = FirebaseAuth.instance.currentUser;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('📜 Lịch sử đơn hàng'),
//         backgroundColor: const Color(0xFFBFAF9B),
//         elevation: 4,
//       ),
//       body: FadeTransition(
//         opacity: _fade,
//         child: Column(
//           children: [
//             if (mostUsedBranch != null)
//               Padding(
//                 padding: const EdgeInsets.all(12),
//                 child: Text(
//                   'Chi nhánh bạn thường chọn: $mostUsedBranch',
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             if (monthlyOrderCount.isNotEmpty)
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Column(
//                   children: [
//                     const Text(
//                       '📊 Số đơn hàng theo tháng',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     buildChart(),
//                   ],
//                 ),
//               ),
//             Expanded(
//               child: StreamBuilder<QuerySnapshot>(
//                 stream: FirebaseFirestore.instance
//                     .collection('orders')
//                     .where('userId', isEqualTo: user?.uid)
//                     .orderBy('createdAt', descending: true)
//                     .snapshots(),
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return const Center(child: CircularProgressIndicator());
//                   }

//                   final orders = snapshot.data!.docs;

//                   if (orders.isEmpty) {
//                     return const Center(
//                       child: Text('Bạn chưa có đơn hàng nào'),
//                     );
//                   }

//                   return ListView.builder(
//                     itemCount: orders.length,
//                     itemBuilder: (context, index) {
//                       final data = orders[index].data() as Map<String, dynamic>;
//                       final subtotal = data['subtotal'] ?? 0.0;
//                       final tax = data['tax'] ?? 0.0;
//                       final shippingFee = data['shippingFee'] ?? 0.0;
//                       final discountPercent =
//                           (data['discountPercent'] ?? 0.0) * 100;
//                       final finalTotal = data['finalTotal'] ?? 0.0;
//                       final status = data['status'] ?? 'Đang xử lý';
//                       final createdAt = data['createdAt'] as Timestamp?;
//                       final branch = data['branch'] ?? '---';
//                       final delivery = data['estimatedDelivery'] ?? '---';

//                       IconData icon;
//                       Color color;
//                       switch (status) {
//                         case 'paid':
//                           icon = Icons.check_circle;
//                           color = Colors.green;
//                           break;
//                         case 'cancelled':
//                           icon = Icons.cancel;
//                           color = Colors.red;
//                           break;
//                         default:
//                           icon = Icons.hourglass_top;
//                           color = Colors.orange;
//                       }

//                       return Card(
//                         margin: const EdgeInsets.symmetric(
//                           horizontal: 16,
//                           vertical: 8,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         elevation: 3,
//                         child: Padding(
//                           padding: const EdgeInsets.all(12),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'Đơn hàng #${data['orderId'] ?? '---'}',
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                   Icon(icon, color: color),
//                                 ],
//                               ),
//                               const Divider(),
//                               Text('Giá sản phẩm: ${formatCurrency(subtotal)}'),
//                               Text('Thuế: ${formatCurrency(tax)}'),
//                               Text(
//                                 'Phí vận chuyển: ${formatCurrency(shippingFee)}',
//                               ),
//                               Text('Giảm giá: $discountPercent%'),
//                               Text(
//                                 'Thành tiền: ${formatCurrency(finalTotal)}',
//                                 style: const TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.redAccent,
//                                 ),
//                               ),
//                               const SizedBox(height: 6),
//                               if (createdAt != null)
//                                 Text('Ngày đặt: ${formatDate(createdAt)}'),
//                               Text('Chi nhánh: $branch'),
//                               Text('Giao hàng: $delivery'),
//                               Text('Trạng thái: $status'),
//                               const SizedBox(height: 8),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   if (status == 'pending')
//                                     IconButton(
//                                       icon: const Icon(
//                                         Icons.cancel,
//                                         color: Colors.red,
//                                       ),
//                                       onPressed: () async {
//                                         final confirm = await showDialog<bool>(
//                                           context: context,
//                                           builder: (ctx) => AlertDialog(
//                                             title: const Text(
//                                               'Xác nhận hủy đơn',
//                                             ),
//                                             content: const Text(
//                                               'Bạn có chắc muốn hủy đơn hàng này không?',
//                                             ),
//                                             actions: [
//                                               TextButton(
//                                                 onPressed: () =>
//                                                     Navigator.pop(ctx, false),
//                                                 child: const Text('Không'),
//                                               ),
//                                               TextButton(
//                                                 onPressed: () =>
//                                                     Navigator.pop(ctx, true),
//                                                 child: const Text('Hủy đơn'),
//                                               ),
//                                             ],
//                                           ),
//                                         );
//                                         if (confirm == true) {
//                                           await FirebaseFirestore.instance
//                                               .collection('orders')
//                                               .where(
//                                                 'orderId',
//                                                 isEqualTo: data['orderId'],
//                                               )
//                                               .get()
//                                               .then((snapshot) async {
//                                                 for (var doc in snapshot.docs) {
//                                                   await doc.reference.update({
//                                                     'status': 'cancelled',
//                                                   });
//                                                 }
//                                               });
//                                           ScaffoldMessenger.of(
//                                             context,
//                                           ).showSnackBar(
//                                             const SnackBar(
//                                               content: Text('Đã hủy đơn hàng'),
//                                               backgroundColor: Colors.red,
//                                             ),
//                                           );
//                                         }
//                                       },
//                                     ),
//                                   IconButton(
//                                     icon: const Icon(
//                                       Icons.receipt_long,
//                                       color: Colors.brown,
//                                     ),
//                                     onPressed: () {
//                                       Navigator.pushNamed(
//                                         context,
//                                         '/order-detail',
//                                         arguments: data,
//                                       );
//                                     },
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  Map<String, int> monthlyOrderCount = {};
  String? mostUsedBranch;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
    fetchStats();
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

  String formatDate(Timestamp timestamp) {
    final date = timestamp.toDate();
    return DateFormat('dd/MM/yyyy HH:mm').format(date);
  }

  Future<void> fetchStats() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final snapshot = await FirebaseFirestore.instance
        .collection('orders')
        .where('userId', isEqualTo: user.uid)
        .get();

    final Map<String, int> branchCount = {};
    final Map<String, int> monthCount = {};

    for (var doc in snapshot.docs) {
      final data = doc.data();
      final branch = data['branch'] ?? '---';
      final createdAt = (data['createdAt'] as Timestamp?)?.toDate();
      if (createdAt != null) {
        final key = DateFormat('MM/yyyy').format(createdAt);
        monthCount[key] = (monthCount[key] ?? 0) + 1;
      }
      branchCount[branch] = (branchCount[branch] ?? 0) + 1;
    }

    setState(() {
      monthlyOrderCount = monthCount;
      if (branchCount.isNotEmpty) {
        mostUsedBranch = branchCount.entries
            .reduce((a, b) => a.value > b.value ? a : b)
            .key;
      }
    });
  }

  Widget buildChart() {
    final months = monthlyOrderCount.keys.toList()..sort();
    final values = months.map((m) => monthlyOrderCount[m]!.toDouble()).toList();

    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, _) {
                  final index = value.toInt();
                  if (index >= 0 && index < months.length) {
                    return Text(
                      months[index],
                      style: const TextStyle(fontSize: 10),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
          barGroups: List.generate(months.length, (i) {
            return BarChartGroupData(
              x: i,
              barRods: [
                BarChartRodData(toY: values[i], color: Colors.brown, width: 16),
              ],
            );
          }),
        ),
      ),
    );
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

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('✅ Đã hủy đơn hàng'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('📜 Lịch sử đơn hàng'),
        backgroundColor: const Color(0xFFBFAF9B),
        elevation: 4,
      ),
      body: FadeTransition(
        opacity: _fade,
        child: Column(
          children: [
            if (mostUsedBranch != null)
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Chi nhánh bạn thường chọn: $mostUsedBranch',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            if (monthlyOrderCount.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Text(
                      '📊 Số đơn hàng theo tháng',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    buildChart(),
                  ],
                ),
              ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('orders')
                    .where('userId', isEqualTo: user?.uid)
                    .orderBy('createdAt', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final orders = snapshot.data!.docs;

                  if (orders.isEmpty) {
                    return const Center(
                      child: Text('Bạn chưa có đơn hàng nào'),
                    );
                  }

                  return ListView.builder(
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      final data = orders[index].data() as Map<String, dynamic>;
                      final subtotal = data['subtotal'] ?? 0.0;
                      final tax = data['tax'] ?? 0.0;
                      final shippingFee = data['shippingFee'] ?? 0.0;
                      final discountPercent =
                          (data['discountPercent'] ?? 0.0) * 100;
                      final finalTotal = data['finalTotal'] ?? 0.0;
                      final status = data['status'] ?? 'Đang xử lý';
                      final createdAt = data['createdAt'] as Timestamp?;
                      final branch = data['branch'] ?? '---';
                      final delivery = data['estimatedDelivery'] ?? '---';
                      final distanceKm = data['distanceKm'] ?? 0.0;

                      IconData icon;
                      Color color;
                      switch (status) {
                        case 'paid':
                          icon = Icons.check_circle;
                          color = Colors.green;
                          break;
                        case 'cancelled':
                          icon = Icons.cancel;
                          color = Colors.red;
                          break;
                        default:
                          icon = Icons.hourglass_top;
                          color = Colors.orange;
                      }

                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Đơn hàng #${data['orderId'] ?? '---'}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Icon(icon, color: color),
                                ],
                              ),
                              const Divider(),
                              Text('Giá sản phẩm: ${formatCurrency(subtotal)}'),
                              Text('Thuế: ${formatCurrency(tax)}'),
                              Text(
                                'Phí vận chuyển: ${formatCurrency(shippingFee)}',
                              ),
                              Text('Khoảng cách: ${distanceKm.toString()} km'),
                              Text('Giảm giá: $discountPercent%'),
                              Text(
                                'Thành tiền: ${formatCurrency(finalTotal)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              const SizedBox(height: 6),
                              if (createdAt != null)
                                Text('Ngày đặt: ${formatDate(createdAt)}'),
                              Text('Chi nhánh: $branch'),
                              Text('Giao hàng: $delivery'),
                              Text('Trạng thái: $status'),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (status == 'pending')
                                    IconButton(
                                      icon: const Icon(
                                        Icons.cancel,
                                        color: Colors.red,
                                      ),
                                      onPressed: () async {
                                        await cancelOrder(
                                          context,
                                          data['orderId'],
                                        );
                                      },
                                    ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.receipt_long,
                                      color: Colors.brown,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/order-detail',
                                        arguments: data,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
