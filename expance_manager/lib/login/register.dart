import 'package:expance_manager/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
              SizedBox(
              height: MainApp.heightCal(86),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    // height:  MainApp.heightCal(58.82),
                    // width: MainApp.widthCal(69.76),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25), blurRadius: 20)
                    ]),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      "assets/fullLogo.png",
                      fit: BoxFit.cover,
                    )),
              ],
            ),
            SizedBox(
              height: MainApp.heightCal(70),
            ),
            Expanded(child: Padding(padding:  const EdgeInsets.only(left: 43, right: 43,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Create your Account",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: MainApp.heightCal(40),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Background color of the shadow container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 0, // Spread radius
                            blurRadius: 10, // Blur radius
                            offset: Offset(0, 3), // Offset in x and y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                            8), // Match the TextField border radius
                      ),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Keep the border for TextField
                              borderSide: BorderSide
                                  .none, // Remove additional border if any
                            ),
                            filled:
                                true, // Ensures the TextField is filled with the background color
                            fillColor: Colors
                                .white, // Matches the Container's background color
                            hintText: "Name",
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ),
                    ),
                      SizedBox(
                      height: MainApp.heightCal(25),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Background color of the shadow container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 0, // Spread radius
                            blurRadius: 10, // Blur radius
                            offset: Offset(0, 3), // Offset in x and y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                            8), // Match the TextField border radius
                      ),
                      child: TextField(
                        controller: userNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Keep the border for TextField
                              borderSide: BorderSide
                                  .none, // Remove additional border if any
                            ),
                            filled:
                                true, // Ensures the TextField is filled with the background color
                            fillColor: Colors
                                .white, // Matches the Container's background color
                            hintText: "Username",
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ),
                    ),
                      SizedBox(
                      height: MainApp.heightCal(25),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Background color of the shadow container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 0, // Spread radius
                            blurRadius: 10, // Blur radius
                            offset: Offset(0, 3), // Offset in x and y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                            8), // Match the TextField border radius
                      ),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Keep the border for TextField
                              borderSide: BorderSide
                                  .none, // Remove additional border if any
                            ),
                            filled:
                                true, // Ensures the TextField is filled with the background color
                            fillColor: Colors
                                .white, // Matches the Container's background color
                            hintText: "Password",
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ),
                    ),
                      SizedBox(
                      height: MainApp.heightCal(25),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Background color of the shadow container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 0, // Spread radius
                            blurRadius: 10, // Blur radius
                            offset: Offset(0, 3), // Offset in x and y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                            8), // Match the TextField border radius
                      ),
                      child: TextField(
                        controller: confirmPasswordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Keep the border for TextField
                              borderSide: BorderSide
                                  .none, // Remove additional border if any
                            ),
                            filled:
                                true, // Ensures the TextField is filled with the background color
                            fillColor: Colors
                                .white, // Matches the Container's background color
                            hintText: "Confirm Password",
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ),
                    ),
                    SizedBox(
                      height: MainApp.heightCal(25),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(builder: (context) => HomeScreen()),
                        //   );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),color:Color.fromRGBO(14, 161, 125, 1) ,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12,bottom: 12),
                          child: Text(
                          "Sign In",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500, fontSize: 15,color: Colors.white),
                          textAlign: TextAlign.center,
                                            ),
                        ),
                      ),
                    ),
              ],
            ),
            ))
          ],
        ),
      ),
    );
  }
}