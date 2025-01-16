import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: advToDo(),
    );
  }

}

class advToDo extends StatefulWidget{
  const advToDo({super.key});

  @override
  State createState()=>_advToDoState();
}

class _advToDoState extends State{

  @override 
  Widget build(BuildContext context){
    return template1();
  }

  Widget mainScreen(){
    return Scaffold(
      backgroundColor:const Color.fromRGBO(111, 81, 255, 1),

      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45,left: 30),
            child: Text("Good morning",style: GoogleFonts.quicksand(fontWeight: FontWeight.w400,fontSize: 22,color: Colors.white),),
          ),
      
          Padding(
            padding: const EdgeInsets.only(top: 1,left: 30),
            child: Text("Piyush",style: GoogleFonts.quicksand(fontWeight: FontWeight.w600,fontSize: 30,color:const Color.fromRGBO(255, 255, 255, 1)),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),color: Color.fromRGBO(217, 217, 217,1),
            
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 20),
                    child: Text("CREATE TO DO LIST",style: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 12),),
                  ),
                ],
              ),
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),color: Colors.white
            ),
            child: ListView.builder(itemCount: 5,
            itemBuilder: (context, index) {
              return template1();
            },
            ),
          ),
        ],
      ),

     
    );
  }

   Widget template1(){
        return Row(
            children: [
              Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
                ),
              )


            ],
        );
      }
}