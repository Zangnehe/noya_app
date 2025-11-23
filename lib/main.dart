import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';
import '../provider/cart_page.dart';
import '../screens/home.dart';
import '../cart/category.dart';
import '../provider/addresspage.dart';
import '../provider/paymentpage.dart';
import '../provider/order_history_page.dart';
import '../provider/order_confirmation_page.dart';
import '../provider/address_list_page.dart';
import '../provider/address_edit_page.dart';
import '../widget/bottom_nav_bar.dart';

void main() {
  runApp(const BeautyApp());
}

class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MaterialApp(
        title: 'Beauty Shop',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: const Color(0xFFFDF6F0),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const BottomNavBar(),
          '/address': (context) => const AddressPage(),
          '/address-list': (context) => const AddressListPage(), // thêm
          '/address-edit': (context) => const AddressEditPage(), // thêm
          '/payment': (context) => const PaymentPage(),
          '/history': (context) => const OrderHistoryPage(),
          '/order-confirm': (context) => const OrderConfirmationPage(),
        },
      ),
    );
  }
}
