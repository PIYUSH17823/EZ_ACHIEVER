import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: toDoApp(),
    );
  }
}

class toDoApp extends StatefulWidget {
  const toDoApp({super.key});

  @override
  State createState() => _toDoAppState();
}

class _toDoAppState extends State with TickerProviderStateMixin {
  List<Map> listOfTasks = [];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  bool subbool = false;
  bool isEdit1 = false;

  List<Color> cardColors = [
   const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1)
  ];

  List<Image> listOfImages = [
    Image.asset(
      "assets/natureimg5.avif",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/natureimg2.avif",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/natureimg3.avif",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/natureimg4.avif",
      fit: BoxFit.cover,
    ),
  ];

  int index1 = 0;

  @override
  Widget build(BuildContext context) { 
    return mainScreen();
  }

  void Submit(
      {bool isEdit = false,
      required String title,
      required String description,
      required String Date,
      required int index}) {
    if (!isEdit) {
      Map myMap = {};
      myMap.addAll({
        "title": title,
        "description": description,
        "date": Date,
      });
      //_controller.dispose();

      listOfTasks.add(myMap);
    } else {
      Map myMap = {};
      myMap.addAll({
        "title": title,
        "description": description,
        "date": Date,
      });
      listOfTasks[index] = myMap;
    }
    Navigator.of(context).pop();
    setState(() {});
  }

//Bottom Sheet
  Future bottomScreen({required int index}) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:const
                        EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                    child: Text(
                      "Create To-Do",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  //Title
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Title",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 139, 148, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(2, 167, 177, 1)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),

                  //Description
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Description",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 139, 148, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(
                              2,
                              167,
                              177,
                              1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),

                  //Date
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Date",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 139, 148, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: TextField(
                      controller: dateController,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025));
                        String formatDate =
                            DateFormat.yMMMd().format(pickedDate!);
                        setState(() {
                          dateController.text = formatDate;
                        });
                      },
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.calendar_month_outlined,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(2, 167, 177, 1)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),

                  //Submit
                  GestureDetector(
                    onTap: () {
                      // if(index<listOfTasks.length){
                      //   isEdit1=true;
                      // }else

                      // {
                      //   isEdit1=false;
                      // }
                      if (!isEdit1) {
                        Submit(
                            title: titleController.text.trim(),
                            description: descriptionController.text.trim(),
                            Date: dateController.text.trim(),
                            index: index);
                      } else {
                        Submit(
                            isEdit: true,
                            title: titleController.text.trim(),
                            description: descriptionController.text.trim(),
                            Date: dateController.text.trim(),
                            index: index);
                      }
                      titleController.clear();
                      descriptionController.clear();
                      dateController.clear();
                      subbool = false;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Submit",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget mainScreen() {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 26, left: 15),
          child: Text(
            "To-do list",
            style: GoogleFonts.quicksand(
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: listOfTasks.length,
          itemBuilder: (context, index) {
            index1 = index;
            return template(index, listOfTasks[index]["title"],
                listOfTasks[index]["description"], listOfTasks[index]["date"]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        onPressed: () {
          subbool = true;
         bottomScreen(index: index1).then((_) {
      // Show snackbar after task addition
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Task Added"),
          duration: Duration(seconds: 4),
        ),
      );
    });
        },
        child: const Icon(
          Icons.add,
          size: 55,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget template(index, title, description, date) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 30,
      ),
      child: Container(
        // height: 112,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: cardColors[index % cardColors.length],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [

                
                //Image
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 23, bottom: 12),
                  child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      clipBehavior: Clip.antiAlias,
                      height: 52,
                      width: 52,
                      child: listOfImages[index % listOfImages.length]),
                ),

                const SizedBox(
                  height: 5,
                ),

                //date
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "$date",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(132, 132, 132, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            //tile
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Text("$title"),
                ),

                //description
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Container(
                    height: 44,
                    width: 243,
                    child: Text(
                      "$description",
                      style: GoogleFonts.quicksand(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ///  Edit
                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: GestureDetector(
                        onTap: () {
                          titleController.text = listOfTasks[index]["title"];
                          descriptionController.text =
                              listOfTasks[index]["description"];
                          dateController.text = listOfTasks[index]["date"];

                          isEdit1 = true;
                           bottomScreen(index: index).then((_) {
        // Show snackbar after task edit
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Task Edited"),
            duration: Duration(seconds: 4),
          ),
        );
      });
                          // isEdit = false;
                        },
                        child: Container(
                          height: 13,
                          width: 13,
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: GestureDetector(
                        onTap: () {
                          listOfTasks.removeAt(index);
                          
                          setState(() {});

                            ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Task Deleted"),
      duration: Duration(seconds: 4),));
                        },
                        child: Container(
                          height: 13,
                          width: 10,
                          child: const Icon(
                            Icons.delete_outline,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
