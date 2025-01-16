import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class DashBoard extends StatefulWidget {
  List<dynamic> data = [];
  DashBoard({super.key, required this.data});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List listOfCatagory = ["Trending", "Health", "Sports", "Finance", "Other"];

  List<bool> isTappedList = [false, false, false, false, false];
  List<Color> cardColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1)
  ];
  bool isLike = false;

  //List<dynamic> cards = [];

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('1'),
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 200,
                    width: 200,
                    //clipBehavior: Clip.antiAlias,
                    child: Image.asset("assets/newss.png")),
                Spacer(),
                Icon(
                  Icons.apps_outlined,
                  color: Colors.white,
                  size: 45,
                ),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              height: 60,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfCatagory.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: GestureDetector(
                        onTap: () {
                          //getDeviceData();
                          setState(() {
                            // getDeviceData();
      
                            for (int i = 0; i < isTappedList.length; i++) {
                              isTappedList[i] = false;
                            }
      
                            isTappedList[index] = !isTappedList[index];
                          });
                        },
                        child: Container(
                          height: 30,
                          child: Center(
                            child: Text(
                              listOfCatagory[index],
                              style: GoogleFonts.imprima(
                                  fontSize: isTappedList[index]
                                      ? 25 // Text color change
                                      : 16,
                                  fontWeight: isTappedList[index]
                                      ? FontWeight.w700 // Text color change
                                      : FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Flexible(
                child: CardSwiper(
                    cardBuilder: (context, index, horizontalofsetpercentage,
                        verticleoffsetpercentage) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: cardColors[index % cardColors.length],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    "${widget.data[index]["title"]}",
                                    style: GoogleFonts.imprima(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${widget.data[index]["publishedAt"]}",
                                  style: GoogleFonts.imprima(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orange),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Published by",
                                          style: GoogleFonts.imprima(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black),
                                        ),
                                        Flexible(
                                          flex: 0,
                                          child: Text(
                                            "${widget.data[index]["author"]}",
                                            style: GoogleFonts.imprima(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            //softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.black,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 7.0,
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 5,
                                            bottom: 5),
                                        child: Text(
                                          "Follow",
                                          style: GoogleFonts.imprima(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SingleChildScrollView(
                                  child: Text(
                                    "${widget.data[index]["description"]}",
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.imprima(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        isLike = true;
                                        setState(() {});
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 230, 227, 227)),
                                        child: isLike
                                            ? Icon(Icons.thumb_up_alt)
                                            : Icon(Icons.thumb_up_alt_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        isLike = true;
                                        setState(() {});
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 230, 227, 227)),
                                        child: isLike
                                            ? Icon(Icons.save_alt_outlined)
                                            : Icon(Icons.save_alt_rounded),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        isLike = true;
                                        setState(() {});
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 230, 227, 227)),
                                        child: isLike
                                            ? Icon(Icons.share)
                                            : Icon(Icons.share),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    cardsCount: widget.data.length))
          ],
        ),
      ),
    );
  }
}
