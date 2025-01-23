import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp_api/mainScreen.dart';

class DashBoard extends StatefulWidget {
  final List<dynamic> data;

  DashBoard({super.key, required this.data});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<String> listOfCategory = ["Trending", "Health", "Sports", "Finance", "Other"];
  List<bool> isTappedList = [false, false, false, false, false];
  List<Color> cardColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1)
  ];
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            // Header Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    height: 100, // Reduced size to avoid overflow
                    width: 100,
                    child: Image.asset("assets/newss.png"),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.apps_outlined,
                    color: Colors.white,
                    size: 45,
                  ),
                ],
              ),
            ),

            // Category List
            SizedBox(
              height: 60,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listOfCategory.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          for (int i = 0; i < isTappedList.length; i++) {
                            isTappedList[i] = false;
                          }
                          isTappedList[index] = true;
                        });
                      },
                      child: Container(
                        height: 30,
                        child: Center(
                          child: Text(
                            listOfCategory[index],
                            style: GoogleFonts.imprima(
                              fontSize: isTappedList[index] ? 25 : 16,
                              fontWeight:
                                  isTappedList[index] ? FontWeight.w700 : FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Card Swiper
            Expanded(
              child: CardSwiper(
                cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Mainscreen(data1:widget.data[index],cardColor: cardColors[index],)));
                      log("${widget.data[index]}");
                      // Add navigation logic here if required
                    },
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
                            // Title
                            Text(
                              "${widget.data[index]["title"]}",
                              style: GoogleFonts.imprima(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 15),

                            // Date
                            Text(
                              "${widget.data[index]["publishedAt"]}",
                              style: GoogleFonts.imprima(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 20),

                            // Publisher Details
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.orange,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Published by",
                                      style: GoogleFonts.imprima(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "${widget.data[index]["author"]}",
                                      style: GoogleFonts.imprima(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.black,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 7.0,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: Text(
                                      "Follow",
                                      style: GoogleFonts.imprima(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),

                            // Description
                            Expanded(
                              child: SingleChildScrollView(
                                child: Text(
                                  "${widget.data[index]["description"]}",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.imprima(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),

                            // Social Icons
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
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 230, 227, 227),
                                    ),
                                    child: Icon(isLike ? Icons.thumb_up_alt : Icons.thumb_up_alt_outlined),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 230, 227, 227),
                                    ),
                                    child: const Icon(Icons.save_alt_rounded),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 230, 227, 227),
                                    ),
                                    child: const Icon(Icons.share),
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
                cardsCount: widget.data.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
