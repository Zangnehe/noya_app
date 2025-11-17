// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../provider/cart_provider.dart';
// import '../provider/cart_page.dart';
// // Screens
// import 'home.dart';
// import '../cart/category.dart';
// import '../provider/cart_provider.dart';
// import '../provider/addresspage.dart';
// import '../provider/paymentpage.dart';
// import '../provider/order_history_page.dart';
// import '../provider/order_confirmation_page.dart';
//
// void main() {
//   runApp(const BeautyApp());
// }
//
// class BeautyApp extends StatelessWidget {
//   const BeautyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => CartProvider(),
//       child: MaterialApp(
//         title: 'Beauty Shop',
//         theme: ThemeData(
//           primarySwatch: Colors.pink,
//           scaffoldBackgroundColor: const Color(0xFFFDF6F0),
//         ),
//         debugShowCheckedModeBanner: false,
//         initialRoute: '/',
//         routes: {
//           '/': (context) => const MainScreen(),
//           '/address': (context) => const AddressPage(),
//           '/payment': (context) => const PaymentPage(),
//           '/history': (context) => const OrderHistoryPage(),
//           '/order-confirm': (context) => const OrderConfirmationPage(),
//         },
//       ),
//     );
//   }
// }
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 0;
//
//   final List<Widget> _pages = const [
//     HomePage(),
//     CategoryPage(),
//     CartPage(),
//     Center(child: Text('🔔 Thông báo')),
//     Center(child: Text('👤 Tài khoản')),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() => _selectedIndex = index);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.pink,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.category),
//             label: 'Danh mục',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Giỏ hàng',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Thông báo',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tài khoản'),
//         ],
//       ),
//     );
//   }
// }
