import 'package:flutter/material.dart';
import 'package:foodpanda_ui_clone/screens/home_screen.dart';
import 'package:foodpanda_ui_clone/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FoodPanda UI Clone",
      home: HomeScreen(),
    );
  }
}
