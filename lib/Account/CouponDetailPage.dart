import 'package:flutter/material.dart';

class CouponDetailPage extends StatelessWidget {
  final Map<String, dynamic> coupon;

  CouponDetailPage({required this.coupon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chi tiết mã giảm giá")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mã: ${coupon['code']}", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Giảm giá: ${coupon['discount']}%", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Hiệu lực từ ${coupon['start_date']} đến ${coupon['end_date']}", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text("Loại: ${coupon['type'] == 'private' ? 'Mã riêng cho bạn' : 'Mã chung'}", style: TextStyle(fontSize: 16)),
            Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: logic áp dụng mã giảm giá vào giỏ hàng
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Đã áp dụng mã ${coupon['code']}")),
                );
              },
              icon: Icon(Icons.check),
              label: Text("Áp dụng"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
