import 'package:flutter/material.dart';
// import 'package:giao_dien_trang_home/Account/chat_product_screen.dart';
import 'package:giao_dien_trang_home/Account/smart_chat_screen.dart';
import 'package:provider/provider.dart';

import '../Account/SettingAccount.dart';
import '../Account/OrderOverviewScreen.dart';
import '../provider/address_list_page.dart';
import '../ProductDetailPage/favorite_provider.dart';
import 'SkinAssessmentPage.dart';
import 'RecommendedProductsPage.dart';
import 'SkinAssessmentProvider.dart';
import 'chat_screen.dart'; // <-- Thêm màn hình chat
import 'smart_chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'RoutineSuggestionScreen.dart';
import 'coupon_page.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});

  // Lấy tên từ Firestore hoặc FirebaseAuth
  Future<String> _getCustomerName() async {
    final user = FirebaseAuth.instance.currentUser;
    final email = user?.email; // ví dụ: lyne@gmail.com
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

  final List<Map<String, dynamic>> orderItems = [
    {'icon': Icons.assignment_turned_in, 'label': 'Chờ xác nhận', 'index': 0},
    {'icon': Icons.store_mall_directory, 'label': 'Chờ lấy hàng', 'index': 1},
    {'icon': Icons.local_shipping, 'label': 'Chờ nhận hàng', 'index': 2},
    {'icon': Icons.reviews, 'label': 'Đánh giá', 'index': 3},
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ----------------- HEADER -----------------
            FutureBuilder<String>(
              future: _getCustomerName(),
              builder: (context, snapshot) {
                final name = snapshot.data ?? 'Khách hàng';
                return Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 0),
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.brown[200],
                        child:
                            const Icon(Icons.person, size: 40, color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                );
              },
            ),

            // ----------------- ĐƠN HÀNG CỦA TÔI -----------------
            _sectionContainer(
              '',
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Đơn hàng của tôi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => OrderOverviewScreen(initialTabIndex: 0),
                            ),
                          );
                        },
                        child: const Text(
                          "Xem tất cả >",
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Các trạng thái đơn hàng
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: orderItems.map((item) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => OrderOverviewScreen(
                                initialTabIndex: item['index'],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.brown[200],
                              child: Icon(item['icon'], color: Colors.white),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item['label'],
                              style:
                                  const TextStyle(fontSize: 12, color: Colors.brown),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),

            // ----------------- TIỆN ÍCH -----------------
            _sectionContainer(
              'Tiện ích',
              _gridSection(context, [
                // Yêu thích
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
                                child: const Icon(Icons.favorite, color: Colors.white),
                              ),
                              if (count > 0)
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      '$count',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text("Yêu thích",
                              style: TextStyle(fontSize: 12, color: Colors.brown)),
                        ],
                      ),
                    );
                  },
                ),

                _buildGridItem(Icons.location_on, 'Sổ địa chỉ', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AddressListPage()));
                }),

                _buildGridItem(Icons.card_giftcard, 'Mã giảm giá', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CouponPage()));
                }),

                _buildGridItem(Icons.spa, 'Kiểm tra da', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SkinAssessmentPage()));
                }),

                _buildGridItem(Icons.recommend, 'Gợi ý sản phẩm', () {
                  final provider =
                      Provider.of<SkinAssessmentProvider>(context, listen: false);
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

                _buildGridItem(Icons.chat, 'Chat', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SmartChatScreen()),
                  );
                }),

                _buildGridItem(Icons.auto_awesome, 'Gợi ý combo routine', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RoutineSuggestionScreen()),
                  );
                }),

                _buildGridItem(Icons.access_alarm, 'Nhắc nhở chu kỳ', () {}),
              ]),
            ),

            // ----------------- TRUNG TÂM HỖ TRỢ -----------------
            _sectionContainer(
              'Trung tâm hỗ trợ',
              Column(
                children: [
                  _supportTile(Icons.store, 'Danh sách cửa hàng', () {}),
                  _supportTile(Icons.swap_horiz, 'Chính sách đổi / trả hàng', () {}),
                  _supportTile(Icons.rule, 'Quy định & Điều khoản', () {}),
                  _supportTile(Icons.support_agent, 'Hỗ trợ khách hàng', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ChatScreen()),
                    );
                  }),
                ],
              ),
            ),

            // ----------------- TÀI KHOẢN (ĐỔI TÊN) -----------------
            _sectionContainer(
              'Tài khoản',
              Column(
                children: [
                  _settingTile(Icons.person, 'Thông tin cá nhân', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SettingAccount()));
                  }),
                  _settingTile(Icons.lock, 'Đổi mật khẩu', () {}),
                  _settingTile(Icons.logout, 'Đăng xuất', () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushReplacementNamed(context, '/login');
                  }),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: Text(
                "Tôi muốn xóa tài khoản của mình",
                style: TextStyle(
                  color: Colors.red.shade700,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // ----------------- COMPONENT HELPERS -----------------

  Widget _sectionContainer(String title, Widget child) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title.isNotEmpty)
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
          if (title.isNotEmpty) const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }

  Widget _gridSection(BuildContext context, List<Widget> children) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      childAspectRatio: 0.8,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: children,
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
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.brown)),
        ],
      ),
    );
  }

  Widget _supportTile(IconData icon, String label, VoidCallback onTap) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.brown),
      title: Text(label),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  Widget _settingTile(IconData icon, String label, VoidCallback onTap) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.brown),
      title: Text(label),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
