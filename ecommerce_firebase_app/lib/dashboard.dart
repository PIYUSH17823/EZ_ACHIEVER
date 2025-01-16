import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  List listOfCatagory = ["All", "Men", "Women", "Kids", "Other"];
  
  // List to track whether the category is tapped or not
  List<bool> isTappedList = [false, false, false, false, false];

  dynamic colourList = [
    Colors.blue,
    Colors.red,
    const Color.fromARGB(255, 224, 127, 159),
    Colors.orange,
    Colors.yellow,
    Colors.deepPurple,
    Colors.lightBlueAccent,
    const Color.fromARGB(255, 11, 41, 65),
    const Color.fromARGB(255, 234, 107, 98)
  ];
dynamic products = [
    {"image": "assets/shopping1.png", "price": "\$240.32", "name": "Tangerine Shirt"},
    {"image": "assets/shopping2.png", "price": "\$325.36", "name": "Leather Coat"},
    {"image": "assets/shopping3.png", "price": "\$126.47", "name": "Tangerine Shirt"},
    {"image": "assets/shopping4.png", "price": "\$257.85", "name": "Leather Coat"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: GestureDetector(
            child: Container(
              child: Image.asset("assets/appbarLeft.png"),
            ),
          ),
        ),
        actions: [Image.asset("assets/appbarRight.png")],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Explore",
                  style: GoogleFonts.imprima(
                      fontSize: 36, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Best trendy collection!",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(121, 119, 128, 1)),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfCatagory.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              // Set all categories to false before updating the tapped one
                              for (int i = 0; i < isTappedList.length; i++) {
                                isTappedList[i] = false;
                              }
                              // Set the tapped category to true
                              isTappedList[index] = !isTappedList[index];
                            });
                          },
                          child: Container(
                            height: 32,
                            //width: 54,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: isTappedList[index]
                                  ? Color.fromRGBO(255, 122, 0, 1)
                                  : Colors.white, // Background color change
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8,right: 18,left: 18,bottom: 8),
                                child: Text(
                                  listOfCatagory[index],
                                  style: GoogleFonts.imprima(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: isTappedList[index]
                                        ? Colors.white // Text color change
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 15,),
        GridView.custom(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 2,
                pattern: [
        WovenGridTile(1),
        WovenGridTile(
          5/4,
          //crossAxisRatio: 1.0,
          alignment: AlignmentDirectional.centerEnd,
        ),
                ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
                childCount: products.length,
                (context, index) => Column(
        children: [
          Stack(
            children: [Container(
              decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                         
                        ),
                        child: Image.asset(products[index]['image']),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: GestureDetector(
              child: Container(
                child: Image.asset("assets/Cart.png"),
              ),
            ))
            ]
          ),
          Text("\$240.32",style: GoogleFonts.imprima(fontSize: 18,fontWeight: FontWeight.w400),)
        ],
                ),
          ),
        
        ),
              
            ],
          ),
        ),
      ),
    );
  }
}
