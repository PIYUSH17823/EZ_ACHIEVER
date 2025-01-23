import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of drawer items
  List<Map<String, dynamic>> drawerList = [
    {
      "icon": Icon(Icons.calendar_month),
      "title": "Transactions",
    },
    {
      "icon": Icon(CupertinoIcons.graph_square),
      "title": "Graphs",
    },
    {
      "icon": Icon(CupertinoIcons.folder),
      "title": "Category",
    },
    {
      "icon": Icon(CupertinoIcons.trash),
      "title": "Trash",
    },
    {
      "icon": Icon(CupertinoIcons.info_circle),
      "title": "About Us",
    },
  ];

  // Track the selected index
  int selectedIndex = 0; // Default is the first tile

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Month Year"),
            Icon(Icons.arrow_downward),
          ],
        ),
      ),
   drawer: Drawer(
  backgroundColor: Colors.white, // Set the entire drawer background to white
  child: Column(
    children: [
      // Drawer header
      DrawerHeader(
        padding: EdgeInsets.zero, // Remove extra padding
        margin: EdgeInsets.zero, // Remove default margin
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Expense Manager",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Text(
              "Saves all your Transactions",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
          ],
        ),
      ),
      // ListView.builder for drawer items
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.zero, // Remove default padding
          itemCount: drawerList.length,
          itemBuilder: (context, index) {
            // Determine styles based on selection
            bool isSelected = selectedIndex == index;
            Color backgroundColor =
                isSelected ? Color.fromRGBO(194, 240, 225, 1) : Colors.transparent;
            Color iconAndTextColor =
                isSelected ? Color.fromRGBO(14, 161, 125, 1) : Colors.black;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index; // Update the selected index
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: ListTile(
                  leading: IconTheme(
                    data: IconThemeData(color:  Color.fromRGBO(14, 161, 125, 1)),
                    child: drawerList[index]["icon"],
                  ),
                  title: Text(
                    "${drawerList[index]["title"]}",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: iconAndTextColor,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ],
  ),
),


    );
  }
}
