import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../provider/cart_provider.dart';
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
import '../Account/SkinAssessmentProvider.dart';

import '../models/product.dart';

import 'firebase_options.dart';
import '../Login/login_page.dart';
import '../Login/register_page.dart';
import '../Login/splash_screen.dart' as login; // alias cho SplashScreen
import '../Login/forgot_password_page.dart';

import '../product_data/product_data.dart';
import '../cart/category.dart';
import '../screens/guide.dart';
import '../screens/new_products.dart';
import '../provider/addresspage.dart';
import '../ProductDetailPage/product_detail_page.dart';
import '../provider/cart_page.dart';

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
        ChangeNotifierProvider(create: (_) => SkinAssessmentProvider()),
      ],
      child: MaterialApp(
        title: 'Beauty Shop',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: const Color(0xFFFDF6F0),
        ),
        debugShowCheckedModeBanner: false,
        home: const AuthGate(), // ✅ entry point
        routes: {
          '/login': (context) => const LoginPage(),
          '/forgot': (context) => const ForgotPasswordPage(),
          '/register': (context) => const RegisterPage(),
          '/address-edit': (context) => const AddressEditPage(),
          '/payment': (context) => const PaymentPage(),
          '/history': (context) => const OrderHistoryPage(),
          '/cart': (context) => const CartPage(),
          '/order-confirm': (context) => const OrderConfirmationPage(),
          '/order-detail': (context) => const OrderDetailPage(),
          '/branch-info': (context) => const BranchInfoPage(),
          '/favorites': (context) => const FavoritePage(),
          '/category': (context) => const CategoryPage(),
          '/guide': (context) => const GuidePage(),

          // '/product-detail': (context) {
          //   final product =
          //       ModalRoute.of(context)!.settings.arguments as Product;
          //   return ProductDetailPage(product: product);
          // },
          '/new-products': (context) =>
              NewProductsPage(productList: productList),
          '/address': (context) => const AddressPage(),
          '/home': (context) =>
              const widget.BottomNavBar(), // ✅ thêm route Home
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
        // Nếu có lỗi
        if (snapshot.hasError) {
          return const Scaffold(
            body: Center(child: Text('❌ Lỗi kết nối FirebaseAuth')),
          );
        }

        // Nếu đang chờ kết nối
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const login.SplashScreen(); // dùng SplashScreen khi loading
        }

        // Nếu đã đăng nhập
        if (snapshot.hasData && snapshot.data != null) {
          debugPrint('✅ User đăng nhập: ${snapshot.data!.email}');
          return const widget.BottomNavBar();
        }

        // Nếu chưa đăng nhập
        return const LoginPage();
      },
    );
  }
}
