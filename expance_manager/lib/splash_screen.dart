import 'package:expance_manager/login/login.dart';
import 'package:expance_manager/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage())
        );
      },
      child: Scaffold(
        body: Center(
          child: Container(
            height: MainApp.heightCal(144),
            width: MainApp.widthCal(144),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(234, 238, 235, 1)
            ),
            child:Image.asset("assets/fullLogo.png")
          ),
        ),
      ),
    );
  }

  
}
