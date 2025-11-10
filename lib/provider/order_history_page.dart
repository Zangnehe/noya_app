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

  String formatCurrency(double amount) {
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
      mostUsedBranch = branchCount.entries
          .reduce((a, b) => a.value > b.value ? a : b)
          .key;
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

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch sử đơn hàng'),
        backgroundColor: const Color(0xFFBFAF9B),
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
                child: buildChart(),
              ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('orders')
                    .where('userId', isEqualTo: user?.uid)
                    .orderBy('createdAt', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return const Center(child: CircularProgressIndicator());
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
                      final total = data['totalPrice'] ?? 0.0;
                      final status = data['status'] ?? 'Đang xử lý';
                      final createdAt = data['createdAt'] as Timestamp?;
                      final branch = data['branch'] ?? '---';
                      final delivery = data['estimatedDelivery'] ?? '---';

                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title: Text('Đơn hàng #${data['orderId'] ?? '---'}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tổng tiền: ${formatCurrency(total)}'),
                              if (createdAt != null)
                                Text('Ngày đặt: ${formatDate(createdAt)}'),
                              Text('Chi nhánh: $branch'),
                              Text('Giao hàng: $delivery'),
                              Text('Trạng thái: $status'),
                            ],
                          ),
                          trailing: status == 'pending'
                              ? IconButton(
                                  icon: const Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                  ),
                                  onPressed: () async {
                                    final confirm = await showDialog<bool>(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        title: const Text('Xác nhận hủy đơn'),
                                        content: const Text(
                                          'Bạn có chắc muốn hủy đơn hàng này không?',
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(ctx, false),
                                            child: const Text('Không'),
                                          ),
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(ctx, true),
                                            child: const Text('Hủy đơn'),
                                          ),
                                        ],
                                      ),
                                    );
                                    if (confirm == true) {
                                      await FirebaseFirestore.instance
                                          .collection('orders')
                                          .where(
                                            'orderId',
                                            isEqualTo: data['orderId'],
                                          )
                                          .get()
                                          .then((snapshot) async {
                                            for (var doc in snapshot.docs) {
                                              await doc.reference.update({
                                                'status': 'cancelled',
                                              });
                                            }
                                          });
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text('Đã hủy đơn hàng'),
                                        ),
                                      );
                                    }
                                  },
                                )
                              : const Icon(Icons.receipt_long),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/order-detail',
                              arguments: data,
                            );
                          },
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
