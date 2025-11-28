import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    const themeColor = Colors.brown; // ✅ dùng màu nâu đậm cho đồng bộ

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/background.jpg', fit: BoxFit.cover),
          ),
          Container(color: Colors.white.withOpacity(0.7)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo to hơn, bo góc
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'assets/logo.jpg',
                    height: 160,
                  ), // ✅ tăng kích thước logo
                ),
                const SizedBox(height: 30),
                // Chữ chào mừng in đậm, màu nâu đậm
                const Text(
                  'Chào mừng bạn đến với Noya',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28, // ✅ chữ to hơn
                    fontWeight: FontWeight.bold, // ✅ in đậm
                    fontStyle: FontStyle.italic,
                    fontFamily: 'DancingScript',
                    color: themeColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
