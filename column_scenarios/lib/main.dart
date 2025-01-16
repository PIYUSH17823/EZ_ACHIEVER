import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:scenarios(),
    );
  }
}

class scenarios extends StatefulWidget {
  const scenarios({super.key});

  @override
  State createState() => _scenariosState();
   

 
  }

  class _scenariosState extends State{
    // int count=0;
    // bool s1=true;
    // bool s2 =false;
    // bool s3 =false;
    // bool s4 =false;
    // bool s5 =false;
    // bool s6 =false;
    // bool s7 =false;
    // bool s8 =false;
    // bool s9 =false;

    @override
    Widget build(BuildContext context){
      return spaceEvenly1();
    
  //    if (count <= 9) {
  //      if (s1) {
  //        return scenario1();
  //        } else if (s2) {
  //        return scenario2();
  //      }else if (s3) {
  //        return scenario3();
  //      }else if (s4) {
  //        return scenario4();
  //      }else if (s5) {
  //        return scenario5();
  //      }else if (s6) {
  //        return scenario6();
  //      }else if (s7) {
  //        return scenario7();
  //      }else if (s8) {
  //        return scenario8();
  //      }else if (s9) {
  //        return scenario9 ();    
  //       }else{
  //        count = 0;
  //      }
       
    
  //  }else{
  //       count=0;
  //      }
   }

   

  

  Widget scenario1() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      );
    
  }

  Widget scenario2() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      
    );
  }

  Widget scenario3() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      
    );
  }

  Widget scenario4() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
     
    );
  }

  Widget scenario5() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      
    );
  }

  Widget scenario6() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      
    );
  }

  Widget scenario7() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      
    );
  }

  Widget scenario8() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      
    );
  }

  Widget scenario9() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      
    );
  }

//space around
  Widget spaceEvenly1() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            ],
          ),
        ),
      
    );
  }

  //space around
  Widget spaceEvenly2() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            ],
          ),
        ),
      
    );
  }

  //space around
  Widget spaceEvenly3() {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario 1",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            ],
          ),
        ),
      
    );
  }
  }

