import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

// row and column Scroll view

 /* @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Row(
              children: [
                Text(
                  "Instagram",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.arrow_downward),
              ],
            ),
            actions: const [
              Icon(Icons.favourite),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.message_rounded)
            ],
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      "https://images.filmibeat.com/img/popcorn/movie_lists/10-action-packed-hollywood-web-series-you-need-to-watch-20240903152210-2942.jpg",
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      "https://images.filmibeat.com/img/popcorn/movie_lists/10-action-packed-hollywood-web-series-you-need-to-watch-20240903152210-2942.jpg",
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      "https://images.filmibeat.com/img/popcorn/movie_lists/10-action-packed-hollywood-web-series-you-need-to-watch-20240903152210-2942.jpg",
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                )
              ],
            ),
          )),
    );
  }*/


//Static list view

/*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Static List View"),
          centerTitle: true,
        ),
        body: ListView(
          
          children: [
            Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),

            
              
              const Icon(Icons.favorite,
              color: Colors.red,),

              const Text("Bhari"),

              Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),

              GestureDetector(
                onTap: () {
                  print("pressed");
                },
                child: Container(
                  child: const Text("Press me"),
                  color:Colors.amber
                ),
              )
            
          ],
        ),
      ),
    );
  }*/

//List view Builder
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("List View Builder"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
          itemCount: 100,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Text("index : $index",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),);
            
          },
        ),
      )
    );
  }
}
