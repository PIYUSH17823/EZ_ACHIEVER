import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp_api/dashboard.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  bool isDataLoaded=false;
   List<dynamic>  cards = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/newss.png"),
              GestureDetector(
                onTap: () async{
                   await getDeviceData();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => DashBoard(data:cards)));
                      log("$cards");
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 8, bottom: 8),
                    child: Text(
                      "Get Started With News App",
                      style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getDeviceData() async {
    Uri url = Uri.parse(
        
"https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b793e83540df4c8b80c7a284f239e4fd");

    http.Response response = await http.get(url);

    Map<String, dynamic> jsonData = json.decode(response.body);

    List<dynamic> articles = jsonData['articles'] ?? [];

    setState(() {
      cards = articles;
    });
    setState(() {
      cards = articles;
      log("$cards");
      isDataLoaded=true;
    });
  }
}
