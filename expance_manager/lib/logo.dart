

import 'package:flutter/material.dart';

Widget logo() {
    return Container(
      height: 144,
      width: 144,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Color.fromRGBO(234, 238, 235, 1)),
      child: Center(
        child: Stack(children: [Image.asset("assets/splashscreen.png"),
        Positioned(child:Image.network("assets/Subtract.png") )
        
        ],),
      ),
    );
  }