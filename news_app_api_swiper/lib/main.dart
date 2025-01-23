import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newsapp_api/login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: 
    "AIzaSyAn9NKXBSycTCltlJqmYde4TKPmPp-TrFQ", appId: "1:513805855870:android:8bfb5c2df4af0341c33c2f", messagingSenderId: "513805855870", projectId: "newsapp-aee46")
  );
  
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
