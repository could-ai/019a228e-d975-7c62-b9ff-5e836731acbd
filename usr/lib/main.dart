import 'package:couldai_user_app/recharge_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Recharge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const RechargeScreen(),
    );
  }
}
