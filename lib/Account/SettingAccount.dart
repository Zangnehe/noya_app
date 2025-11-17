import 'package:flutter/material.dart';

class SettingAccount extends StatelessWidget {
  const SettingAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cài đặt tài khoản')),
      body: Center(child: Text('Trang cài đặt tài khoản')),
    );
  }
}
