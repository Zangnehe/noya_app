import 'package:flutter/material.dart';
import '../Account/SettingAccount.dart';
import '../Account/OrderOverviewScreen.dart';

class AccountScreen extends StatelessWidget {
  final String customerName = 'Ly Trần';
  final int customerPoints = 120;

  final List<Map<String, dynamic>> orderItems = [
    {'icon': Icons.assignment_turned_in, 'label': 'Chờ xác nhận', 'index': 0},
    {'icon': Icons.store_mall_directory, 'label': 'Chờ lấy hàng', 'index': 1},
    {'icon': Icons.local_shipping, 'label': 'Chờ nhận hàng', 'index': 2},
    {'icon': Icons.reviews, 'label': 'Đánh giá', 'index': 3},
  ];

  final List<Map<String, dynamic>> supportItems = [
    {'icon': Icons.store, 'label': 'Danh sách cửa hàng'},
    {'icon': Icons.receipt_long, 'label': 'Hóa đơn điện tử VAT'},
    {'icon': Icons.swap_horiz, 'label': 'Chính sách đổi / trả hàng'},
    {'icon': Icons.support_agent, 'label': 'Hỗ trợ khách hàng'},
    {'icon': Icons.rule, 'label': 'Quy định & Điều khoản'},
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight,
        color: Colors.brown[300],
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              _headerSection(context),
              _orderSection(context),
              _sectionContainer(
                'Tiện ích',
                _gridSection(context, [
                  {'icon': Icons.favorite, 'label': 'Yêu thích'},
                  {'icon': Icons.location_on, 'label': 'Sổ địa chỉ'},
                  {'icon': Icons.rule, 'label': 'Quy định'},
                  {'icon': Icons.card_giftcard, 'label': 'Mã giảm giá'},
                  {'icon': Icons.support_agent, 'label': 'Hỗ trợ'},
                  {'icon': Icons.compare_arrows, 'label': 'So sánh sản phẩm'},
                  {'icon': Icons.spa, 'label': 'Kiểm tra da'},
                ]),
                const Color(0xFFF5F5F5),
              ),
              _sectionContainer(
                'Trung tâm hỗ trợ',
                _listSection(context, supportItems),
                const Color(0xFFEDE7F6),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.brown[300],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: Color(0xFFD7CCC8),
            child: Icon(Icons.person, color: Colors.white, size: 32),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  customerName,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text('Điểm: $customerPoints điểm',
                    style: const TextStyle(fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingAccount()),
              );
            },
            borderRadius: BorderRadius.circular(20),
            splashColor: Colors.white24,
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.settings, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _orderSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Đơn hàng của tôi',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => OrderOverviewScreen(initialTabIndex: 0)),
                  );
                },
                child: const Text(
                  'Xem tất cả >',
                  style: TextStyle(fontSize: 14, color: Colors.brown),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: orderItems.map((item) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => OrderOverviewScreen(
                          initialTabIndex: item['index']),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(50),
                splashColor: Colors.brown[100],
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.brown,
                      ),
                      child: Icon(item['icon'], size: 24, color: Colors.white),
                    ),
                    const SizedBox(height: 6),
                    Text(item['label'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12, color: Colors.brown)),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _sectionContainer(String title, Widget child, Color background,
      {bool removeTopMargin = false}) {
    return Container(
      margin: EdgeInsets.only(
          top: removeTopMargin ? 0 : 12, bottom: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }

  Widget _gridSection(BuildContext context, List<Map<String, dynamic>> items) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: items.map((item) {
        return InkWell(
          borderRadius: BorderRadius.circular(12),
          splashColor: Colors.brown[100],
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Chọn: ${item['label']}'),
                duration: const Duration(seconds: 1),
              ),
            );
          },
          child: Column(
            children: [
              Icon(item['icon'], size: 30, color: Colors.brown),
              const SizedBox(height: 6),
              Text(item['label'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12, color: Colors.brown)),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _listSection(BuildContext context, List<Map<String, dynamic>> items) {
  return Column(
    children: items.map((item) {
      return InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Mở: ${item['label']}'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
        child: ListTile(
          leading: Icon(item['icon'], color: Colors.brown),
          title: Text(item['label'], style: const TextStyle(color: Colors.brown)),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.brown),
        ),
      );
    }).toList(),
  );
}
}