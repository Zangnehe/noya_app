import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Account/SettingAccount.dart';
import '../Account/OrderOverviewScreen.dart';
import '../provider/address_list_page.dart';
import '../ProductDetailPage/favorite_provider.dart';
import 'SkinAssessmentPage.dart';
import 'RecommendedProductsPage.dart';
import 'SkinAssessmentProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});

  // Hàm lấy tên từ Firestore hoặc displayName
  Future<String> _getCustomerName() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return 'Khách hàng';

    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();

    if (doc.exists && doc.data()?['name'] != null) {
      return doc.data()?['name'];
    }
    return user.displayName ?? 'Khách hàng';
  }

  final logoutItems = [
    {
      'icon': Icons.logout,
      'label': 'Đăng xuất',
      'onTap': (BuildContext context) async {
        await FirebaseAuth.instance.signOut();
        Navigator.pushReplacementNamed(context, '/login');
      },
    },
  ];

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
              // Header hiển thị tên khách hàng
              FutureBuilder<String>(
                future: _getCustomerName(),
                builder: (context, snapshot) {
                  final name = snapshot.data ?? 'Khách hàng';
                  return Column(
                    children: [
                      const SizedBox(height: 40),
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.brown[200],
                        child: const Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  );
                },
              ),

              _orderSection(context),

              _sectionContainer(
                'Tiện ích',
                _gridSection(context, [
                  Consumer<FavoriteProvider>(
                    builder: (context, fav, child) {
                      final count = fav.countFavorites;
                      return InkWell(
                        onTap: () => Navigator.pushNamed(context, '/favorites'),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.brown[200],
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ),
                                if (count > 0)
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade600,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        '$count',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Yêu thích',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.brown,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  _buildGridItem(Icons.location_on, 'Sổ địa chỉ', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AddressListPage(),
                      ),
                    );
                  }),
                  _buildGridItem(Icons.spa, 'Sản phẩm gợi ý', () {
                    final provider = Provider.of<SkinAssessmentProvider>(
                      context,
                      listen: false,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => RecommendedProductsPage(
                          selectedIssues: provider.selectedIds,
                          severity: provider.severity,
                        ),
                      ),
                    );
                  }),
                  _buildGridItem(Icons.card_giftcard, 'Mã giảm giá', () {
                    // TODO: thêm logic hiển thị mã giảm giá
                  }),
                  _buildGridItem(Icons.spa, 'Kiểm tra da', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SkinAssessmentPage(),
                      ),
                    );
                  }),
                ]),
                const Color(0xFFF5F5F5),
              ),

              _sectionContainer(
                'Trung tâm hỗ trợ',
                _listSection(context, supportItems),
                const Color(0xFFEDE7F6),
              ),

              _sectionContainer(
                'Đăng xuất',
                _listSection(context, logoutItems),
                const Color(0xFFFFEBEE),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Header dùng FutureBuilder để lấy tên từ Firestore
  Widget _headerSection(BuildContext context) {
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get(),
      builder: (context, snapshot) {
        String name = 'Khách hàng';
        if (snapshot.hasData && snapshot.data!.exists) {
          final data = snapshot.data!.data();
          name = data?['name'] ?? 'Khách hàng';
        }

        return Container(
          padding: const EdgeInsets.all(16),
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
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
                child: const Icon(Icons.settings, color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _orderSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: orderItems.map((item) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      OrderOverviewScreen(initialTabIndex: item['index']),
                ),
              );
            },
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.brown,
                  child: Icon(item['icon'], color: Colors.white),
                ),
                const SizedBox(height: 6),
                Text(
                  item['label'],
                  style: const TextStyle(fontSize: 12, color: Colors.brown),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _sectionContainer(
    String title,
    Widget child,
    Color background, {
    bool removeTopMargin = false,
  }) {
    return Container(
      margin: EdgeInsets.only(top: removeTopMargin ? 0 : 12, bottom: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }

  Widget _gridSection(BuildContext context, List<Widget> items) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: items,
    );
  }

  Widget _listSection(BuildContext context, List<Map<String, dynamic>> items) {
    return Column(
      children: items.map((item) {
        return ListTile(
          leading: Icon(item['icon'], color: Colors.brown),
          title: Text(
            item['label'],
            style: const TextStyle(color: Colors.brown),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.brown,
          ),
          onTap: () {
            if (item['onTap'] != null) {
              item['onTap'](context);
            }
          },
        );
      }).toList(),
    );
  }

  Widget _buildGridItem(IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.brown[200],
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Colors.brown),
          ),
        ],
      ),
    );
  }
}
