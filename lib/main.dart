import 'package:flutter/material.dart';
import 'package:mvvm_api_t/view/post_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PostScreen(),
    );
  }
}
