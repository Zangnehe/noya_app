import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  final List<Map<String, String>> demoNotifications = const [
    {
      'title': 'Đơn hàng đã được giao',
      'subtitle': 'Đơn hàng #12345 của bạn đã giao thành công.',
      'time': '1 giờ trước',
    },
    {
      'title': 'Flash Sale 50%',
      'subtitle': 'Nhanh tay mua sản phẩm yêu thích với giá ưu đãi!',
      'time': '3 giờ trước',
    },
    {
      'title': 'Thông báo bảo trì',
      'subtitle': 'Hệ thống sẽ bảo trì vào 22h hôm nay.',
      'time': 'Hôm qua',
    },
    {
      'title': 'Khuyến mãi mới',
      'subtitle': 'Mua 2 tặng 1 cho tất cả sản phẩm chăm sóc da.',
      'time': '2 ngày trước',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông báo'),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: demoNotifications.length,
        itemBuilder: (context, index) {
          final notif = demoNotifications[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2,
            child: ListTile(
              leading: const Icon(Icons.notifications, color: Colors.pink),
              title: Text(
                notif['title'] ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(notif['subtitle'] ?? ''),
              trailing: Text(
                notif['time'] ?? '',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              onTap: () {
                // Bấm vào có thể mở chi tiết thông báo
              },
            ),
          );
        },
      ),
    );
  }
}
