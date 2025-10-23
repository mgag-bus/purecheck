import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';

void main() {
  runApp(const PureCheckApp());
}

class PureCheckApp extends StatelessWidget {
  const PureCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PureCheck',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF7BAA98)), // soft sage
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
      ),
      home: const HomeScreen(),
    );
  }
}
