import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'CouponDetailPage.dart';

class CouponPage extends StatefulWidget {
  @override
  _CouponPageState createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  List<dynamic> coupons = [];
  bool loading = true;

  Future<void> fetchCoupons() async {
    final email = FirebaseAuth.instance.currentUser?.email ?? '';
    final url = Uri.parse('http://192.168.1.5:8000/api/coupons/$email'); // đổi IP nếu test trên thiết bị thật

    try {
      final response = await http.get(url, headers: {'Accept': 'application/json'});
      if (response.statusCode == 200) {
        setState(() {
          coupons = jsonDecode(response.body);
          loading = false;
        });
      } else {
        throw Exception('Lỗi khi gọi API');
      }
    } catch (e) {
      setState(() {
        loading = false;
      });
      debugPrint(' Lỗi API: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCoupons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mã giảm giá của tôi")),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : coupons.isEmpty
              ? Center(child: Text("Bạn chưa có mã giảm giá"))
              : ListView.builder(
                  itemCount: coupons.length,
                  itemBuilder: (context, index) {
                    final coupon = coupons[index];
                    return Card(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Icon(Icons.local_offer, color: Colors.green),
                        title: Text("${coupon['code']} - ${coupon['discount']}%"),
                        subtitle: Text("Hiệu lực: ${coupon['start_date']} → ${coupon['end_date']}"),
                        trailing: coupon['type'] == 'private'
                            ? Chip(label: Text("Mã riêng", style: TextStyle(color: Colors.white)), backgroundColor: Colors.orange)
                            : Chip(label: Text("Mã chung", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CouponDetailPage(coupon: coupon),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
    );
  }
}
