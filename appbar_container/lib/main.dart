import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //1,2
        /* appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Instagram",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.black,
          actions: const [
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.message_rounded, color: Colors.white)
          ],
        ),*/

        //3
        /*     appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("Hello Core2Web",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 30,
        ),),
      ),

      body: Center(
        child: Container(
          height: 200,
          width: 360,
          color: Colors.blue,
        ),
      ),*/

        //4
/*        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                                             
                      
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
        ),
        */
        /* 5)
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: const Text("3 Images Vertically"),
          ),
          body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
                  ),
                ],
            
            ),
          ),*/

        //6

        /*  appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text(
              "Scrollable Screen ",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListBody(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.cyan,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),*/

          //7

      /*  appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Scrollable Screen horizontal",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYoRJvz6pWUntoLA7DJVO3G9ULDKGIsU4_ow&s"),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYoRJvz6pWUntoLA7DJVO3G9ULDKGIsU4_ow&s"),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYoRJvz6pWUntoLA7DJVO3G9ULDKGIsU4_ow&s"),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYoRJvz6pWUntoLA7DJVO3G9ULDKGIsU4_ow&s"),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYoRJvz6pWUntoLA7DJVO3G9ULDKGIsU4_ow&s"),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYoRJvz6pWUntoLA7DJVO3G9ULDKGIsU4_ow&s"),
            ),
            
          ]),
        ),*/

          //8
         appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Scrollable Screen horizontal",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
