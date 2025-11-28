import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../provider/cart_provider.dart';
import '../provider/addresspage.dart';
import '../provider/paymentpage.dart';
import '../provider/order_history_page.dart';
import '../provider/order_confirmation_page.dart';
import '../provider/address_list_page.dart';
import '../provider/address_edit_page.dart';
import '../provider/order_detail_page.dart';

import '../widget/bottom_nav_bar.dart' as widget; // alias cho BottomNavBar
import '../BranchSelectionPage/branch_info_page.dart';
import '../ProductDetailPage/favorite_page.dart';
import '../ProductDetailPage/favorite_provider.dart';

import 'firebase_options.dart';
import '../Login/login_page.dart';
import '../Login/register_page.dart';
import '../Login/splash_screen.dart' as login; // alias cho SplashScreen
import '../Login/forgot_password_page.dart';

import '../product_data/product_data.dart';
import '../cart/category.dart';
import '../screens/guide.dart';
import '../screens/new_products.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const BeautyApp());
}

class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: MaterialApp(
        title: 'Beauty Shop',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: const Color(0xFFFDF6F0),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthGate(),
          '/login': (context) => const LoginPage(),
          '/forgot': (context) => const ForgotPasswordPage(),
          '/register': (context) => const RegisterPage(),
          '/address': (context) => const AddressPage(),
          '/address-list': (context) => const AddressListPage(),
          '/address-edit': (context) => const AddressEditPage(),
          '/payment': (context) => const PaymentPage(),
          '/history': (context) => const OrderHistoryPage(),
          '/order-confirm': (context) => const OrderConfirmationPage(),
          '/order-detail': (context) => const OrderDetailPage(),
          '/branch-info': (context) => const BranchInfoPage(),
          '/favorites': (context) => const FavoritePage(),
          '/category': (context) => const CategoryPage(),
          '/guide': (context) => const GuidePage(),
          '/new-products': (context) =>
              NewProductsPage(productList: productList),
        },
      ),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        final user = snapshot.data;
        if (user != null) {
          return const widget.BottomNavBar(); // ✅ dùng alias widget.BottomNavBar
        } else {
          return const login.SplashScreen(); // ✅ dùng alias login.SplashScreen
        }
      },
    );
  }
}
