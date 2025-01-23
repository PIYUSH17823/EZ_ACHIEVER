import 'package:expance_manager/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static double width = 0;
  static double heigth = 0;
  static String messName = '';

  static widthCal(double width) {
    double ans = width / MainApp.width;
    return ans * MainApp.width;
  }

  static heightCal(double height) {
    double ans = height / MainApp.heigth;
    return ans * MainApp.heigth;
  }

  static bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    heigth = MediaQuery.of(context).size.height;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
);
}
}
