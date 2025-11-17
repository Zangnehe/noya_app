import 'package:flutter/material.dart';

class OrderOverviewScreen extends StatelessWidget {
  final int initialTabIndex;

  const OrderOverviewScreen({super.key, this.initialTabIndex = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialTabIndex,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Đơn hàng của bạn'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Chờ xác nhận'),
              Tab(text: 'Chờ lấy hàng'),
              Tab(text: 'Chờ nhận hàng'),
              Tab(text: 'Đánh giá'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Danh sách đơn chờ xác nhận')),
            Center(child: Text('Danh sách đơn chờ lấy hàng')),
            Center(child: Text('Danh sách đơn chờ nhận hàng')),
            Center(child: Text('Danh sách đơn cần đánh giá')),
          ],
        ),
      ),
    );
  }
}
