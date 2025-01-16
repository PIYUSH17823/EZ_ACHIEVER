import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: eCommerece(),
    );
  }
}

class eCommerece extends StatefulWidget {
  const eCommerece({super.key});

  @override
  State createState() => _eCommereceState();
}

class _eCommereceState extends State {
  int data = 1;
  @override
  Widget build(BuildContext context) {
    return cartScreen();
  }

// The Buy Screen
  Widget buyScreen() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoes",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 400,
              child: Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              "Nike Air Force 1'07",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                child: GestureDetector(
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(29)),
                        color: Colors.blue),
                    padding: const EdgeInsets.all(12),
                    child: const Text(
                      "SHOES",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(29)),
                      color: Colors.blue),
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "FOOTWEAR",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              "A shoe is an item of footwear intended to protect and comfort the human foot. Though the human foot can adapt to varied terrains and climate conditions, it is vulnerable, and shoes provide protection. Form was originally tied to function, but over time, shoes also became fashion items. ",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: const Text(
                  "Quantity ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (data > 0) {
                    data--;
                  }
                  setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const Icon(Icons.remove),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Text("$data"),
              ),
              GestureDetector(
                onTap: () {
                  data++;
                  setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(29)),
                    color: Colors.blue),
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text(
                    "PURCHASE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget cartScreen() {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  alignment: Alignment.topLeft,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  )),
            ),
            Center(
              child: Container(child: const Text("My Cart")),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Row(

              ),
            ),
          ]);
        },
      ),
    );
  }
}
