import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shopLocations.dart';
//import 'package:sizes/sizes_helpers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: delightPets(),
    );
  }
}

class delightPets extends StatefulWidget {
  const delightPets({super.key});

  @override
  State<StatefulWidget> createState() {
    return _delightPetsState();
  }
}

class _delightPetsState extends State {
  bool isHomePage = false;

  @override
  Widget build(BuildContext context) {
    return homePage();
  }

  dynamic homePage() {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.more_vert_sharp));
          }),
          actions: [
            Container(
                height: 75,
                width: 75,
//clipBehavior: Clip.antiAlias,
                child: Icon(Icons.shopping_cart_outlined))
          ],
          centerTitle: true,
          title: Container(
              height: 100,
              width: 100,
//clipBehavior: Clip.antiAlias,
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.cover,
              )),
        ),
        drawer: Container(
          width: 350,
          color: const Color.fromARGB(255, 225, 220, 220),
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:80),
                    child: Container(
                      height: 70,
                      color: const Color.fromARGB(255, 225, 220, 220),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Login ",
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                  setState(() {});
                                },
                                child: Icon(Icons.one_x_mobiledata))
                          ],
                        ),
                      ),
                    ),
                  ),
                 
                  
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/walk.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "FRESH MEALS ",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/walk.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "FRESH MEALS ",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/walk.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "FRESH MEALS ",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/walk.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "FRESH MEALS ",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/walk.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "FRESH MEALS ",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/walk.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "FRESH MEALS ",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/walk.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "FRESH MEALS ",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/walk.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "FRESH MEALS ",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
          
                  Container(color: const Color.fromARGB(255, 212, 143, 143),
                  width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              "Track Your Order ",
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                           GestureDetector(
                            onTap: (){
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(builder: (context){
                              //     // Drawer();
                                   
                              //   }
                              //   )
                              // );

                             
                            },
                             child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 10),
                              
                                child: Text(
                                  "Locate Store ",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 18, fontWeight: FontWeight.w700),
                                ),
                              
                                                         ),
                           ),
                           Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              "Customer Support ",
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              "FRESH MEALS ",
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                          
                    
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // TextField(
                  //   decoration: InputDecoration(
                  //         border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50),
                  //        // borderSide: BorderSide(color: Colors.black,width: 2)
                  //        ),
                  //     hintText: "Search Anything For Your Pet",
                  //     prefix: const Icon(Icons.search_rounded,size: 25,),
                  //   ),
                  // ),

                  ///SearchBar

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SearchAnchor(builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(
                        hintText: "Search anything for your pet",
                        controller: controller,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 16.0)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        leading: const Icon(Icons.search),
                        trailing: <Widget>[
                          Tooltip(
                            message: 'Change brightness mode',
                            // child: IconButton(
                            //   isSelected: isDark,
                            //   onPressed: () {
                            //     setState(() {
                            //       isDark = !isDark;
                            //     });
                            //   },
                            //   icon: const Icon(Icons.wb_sunny_outlined),
                            //   selectedIcon: const Icon(Icons.brightness_2_outlined),
                            // ),
                          )
                        ],
                      );
                    }, suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'item $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(() {
                              controller.closeView(item);
                            });
                          },
                        );
                      });
                    }),
                  ),

                  ///Deal

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Text(
                            "Limited Edition: Diwali Treats",
                            style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///Row

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  "assets/treat.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                "Treats",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Stack(children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  clipBehavior: Clip.antiAlias,
                                  child: Image.asset(
                                    "assets/Dogimg1.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 12,
                                  right: 12,
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Image.asset("assets/pedigree.jpg"),
                                  ),
                                )
                              ]),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "Dog Food",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  "assets/outfits.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                "Toys",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  "assets/walk.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                "Walk",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  "assets/catfood.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                "Cat Food",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  "assets/catscratchers.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "Cat Scratchers",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  "assets/catfood.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                "Cat Toys",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //offer row
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            //height: 300,
                            color: const Color.fromARGB(255, 240, 187, 205),
                            child: Stack(children: [
                              Container(
                                // alignment: Alignment.bottomRight,
                                child: Image.asset("assets/dogimgad.jpg"),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  //clipBehavior: Clip.antiAlias,
                                  child: Image.asset(
                                    "assets/logoadd.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 60,
                                left: 20,
                                child: Container(
                                  //color: const Color.fromARGB(255, 236, 162, 162),
                                  child: Text(
                                    "Run like A pro",
                                    style: GoogleFonts.quicksand(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 20,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Shop Now",
                                          style: GoogleFonts.quicksand(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                            color: const Color.fromARGB(
                                                255, 2, 87, 156),
                                          ),
                                        ),
                                        const Icon(
                                            Icons.arrow_circle_right_sharp)
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                              //color: const Color.fromARGB(255, 135, 42, 73),
                              child: Stack(children: [
                                Container(
                                    child:
                                        Image.asset("assets/landscapead.jpg"))
                              ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),


                  //Winter offer


                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "This ",
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Winter, ",
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "Head To Paw...",
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "...we will be Wrapped In Love! ",
                              style: GoogleFonts.quicksand(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Stack(children: [
                                Container(
                                  height: 125,
                                  width: 190,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          255, 154, 77, 168)),
                                  child: Image.asset("assets/sweaterad.jpg"),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Container(
                                    color: Colors.white,
                                    child: Text(
                                      "Sweaters",
                                      style: GoogleFonts.quicksand(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(children: [
                                  Container(
                                    height: 125,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromARGB(
                                            255, 154, 77, 168)),
                                    child: Image.asset("assets/sweaterad.jpg"),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 0,
                                    child: Container(
                                      color: Colors.white,
                                      child: Text(
                                        "Sweaters",
                                        style: GoogleFonts.quicksand(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Stack(children: [
                                Container(
                                  height: 125,
                                  width: 190,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          255, 154, 77, 168)),
                                  child: Image.asset("assets/sweaterad.jpg"),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Container(
                                    color: Colors.white,
                                    child: Text(
                                      "Sweaters",
                                      style: GoogleFonts.quicksand(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(children: [
                                  Container(
                                    height: 125,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromARGB(
                                            255, 154, 77, 168)),
                                    child: Image.asset("assets/sweaterad.jpg"),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 0,
                                    child: Container(
                                      color: Colors.white,
                                      child: Text(
                                        "Sweaters",
                                        style: GoogleFonts.quicksand(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),

                  //Brands
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Find Them All At ",
                                        style: GoogleFonts.quicksand(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "Delight",
                                        style: GoogleFonts.quicksand(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Complete With Deals like nowhere else!",
                              style: GoogleFonts.quicksand(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Stack(children: [
                                    Container(
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(
                                              255, 0, 91, 165)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/rcad.png",
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 230, 195, 79),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  // width: 150,
                                                  child: Text(
                                                "FLAT ",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                              Container(
                                                  //width: 150,
                                                  child: Text(
                                                "50% Off ",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Stack(children: [
                                      Container(
                                        height: 200,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 136, 184, 222)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            "assets/faimaad.png",
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromARGB(
                                                255, 230, 195, 79),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    // width: 150,
                                                    child: Text(
                                                  "FLAT ",
                                                  style: GoogleFonts.quicksand(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )),
                                                Container(
                                                    //width: 150,
                                                    child: Text(
                                                  "50% Off ",
                                                  style: GoogleFonts.quicksand(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),

                                  //Drools
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.red),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/droolsad.png",
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          child: Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color.fromARGB(
                                                  255, 230, 195, 79),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      // width: 150,
                                                      child: Text(
                                                    "FLAT ",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  )),
                                                  Container(
                                                      //width: 150,
                                                      child: Text(
                                                    "50% Off ",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                  )),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          ///Pedigree
                          ///
                          ///
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Stack(children: [
                                    Container(
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(
                                              255, 231, 208, 8)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/pedigreead.png",
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 230, 195, 79),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  // width: 150,
                                                  child: Text(
                                                "FLAT ",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                              Container(
                                                  //width: 150,
                                                  child: Text(
                                                "50% Off ",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),

                                  ///whiskas
                                  ///
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Stack(children: [
                                      Container(
                                        height: 200,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 141, 115, 211)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            "assets/whiskasad.png",
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromARGB(
                                                255, 230, 195, 79),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    // width: 150,
                                                    child: Text(
                                                  "FLAT ",
                                                  style: GoogleFonts.quicksand(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )),
                                                Container(
                                                    //width: 150,
                                                    child: Text(
                                                  "30% Off ",
                                                  style: GoogleFonts.quicksand(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),

                                  ////SHEBAAA

                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 230, 195, 79),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/shebaad.png",
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          child: Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color.fromARGB(
                                                  255, 230, 195, 79),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      // width: 150,
                                                      child: Text(
                                                    "UPTO ",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  )),
                                                  Container(
                                                      //width: 150,
                                                      child: Text(
                                                    "24% Off ",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                  )),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ]),

            // drawer: Container(
            //   width: 300,
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //             width: 300,
            //             height: 20,
            //             color: Color.fromRGBO(233, 220, 201, 1),
            //             child: Text("Login",
            //                 style: GoogleFonts.quicksand(
            //                     color: Color.fromRGBO(128, 0, 0, 1))),
            //           ),
            //           Icon(Icons.keyboard_backspace)
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ));
  }
}
