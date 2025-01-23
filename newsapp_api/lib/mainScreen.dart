import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainscreen extends StatefulWidget {
  final Map data1;
  final dynamic cardColor;

  Mainscreen({super.key, required this.data1, required this.cardColor});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  bool isLike = false;

  @override
  void initState() {
    super.initState();
    // Debugging data passed to the widget
    print("Data passed to Mainscreen: ${widget.data1}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.cardColor,
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button
                GestureDetector(
                  onTap: () {
                    widget.data1.clear();
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 235, 229, 229),
                    ),
                    child: Icon(CupertinoIcons.arrow_left),
                  ),
                ),
                const SizedBox(height: 15),
                // Title
                Text(
                  "${widget.data1["title"] ?? "No title available"}",
                  style: GoogleFonts.imprima(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                // Published Date
                Text(
                  "${widget.data1["publishedAt"] ?? "Unknown date"}",
                  style: GoogleFonts.imprima(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                // Publisher Row
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
                          "${widget.data1["author"] ?? "Unknown author"}",
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
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
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
                Text(
                  "${widget.data1["description"] ?? "No description available"}",
                  style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                // Image
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: widget.data1["urlToImage"] != null && widget.data1["urlToImage"].isNotEmpty
                      ? Image.network(
                          widget.data1["urlToImage"],
                          errorBuilder: (context, error, stackTrace) => Container(
                            height: 200,
                            color: Colors.grey,
                            child: Center(
                              child: Text(
                                "Image failed to load",
                                style: GoogleFonts.imprima(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          height: 200,
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "Image not available",
                              style: GoogleFonts.imprima(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                ),
                const SizedBox(height: 20),
                // Action Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isLike = !isLike;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 230, 227, 227),
                        ),
                        child: Icon(
                          isLike ? Icons.thumb_up_alt : Icons.thumb_up_alt_outlined,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        isLike = !isLike;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 230, 227, 227),
                        ),
                        child: Icon(
                          isLike ? Icons.save_alt_rounded : Icons.save_alt_outlined,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        isLike = !isLike;
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 230, 227, 227),
                        ),
                        child: Icon(
                          isLike ? Icons.share : Icons.share_outlined,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
