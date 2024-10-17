import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(CupertinoIcons.arrow_left),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(

                width: width*0.8,
                decoration: const BoxDecoration(
                    color: Color(0xffEDF9FF),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width*0.57,
                          child: Text("You currently have no ratings",style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: width*0.06,
                            fontWeight: FontWeight.w700
                          ),)),
                      Icon(CupertinoIcons.star_fill,color: Color(0xffFDD835),size: width*0.1,)

                    ],
                  ),
                ),

              ),
            ),
            SizedBox(
              height: height*0.05,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Introducing Customer Ratings"
                     ,style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.04
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipisc- ing elit, sed do eiusmod tempor incididunt ut la- bore et dolore magna aliqua. Quis ipsum suspen disse ultrices gravida. Risus commodo viverra ma aecenas accumsan lacus vel facilisis."
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.03,
                        color: Color(0xff979696)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.03,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("How can I be a 5 star customer"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.04
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipisc- ing elit, sed do eiusmod tempor incididunt ut la- bore et dolore magna aliqua. Quis ipsum suspen disse ultrices gravida."
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.03,
                          color: Color(0xff979696)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.01,
            ),
            Padding(
              padding:  EdgeInsets.only(left: width*0.06),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/clap.png")),
                ],
              ),
            ),
            SizedBox(
              height: height*0.01,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Empathies"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.04
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipisc- ing elit, sed do eiusmod tempor incididunt"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.03,
                          color: Color(0xff979696)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.02,
            ),
            Padding(
              padding:  EdgeInsets.only(left: width*0.06),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/heart.png")),
                ],
              ),
            ),
            SizedBox(
              height: height*0.02,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Support"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.04
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipisc- ing elit, sed do eiusmod tempor incididunt"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.03,
                          color: Color(0xff979696)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.02,
            ),
            Padding(
              padding:  EdgeInsets.only(left: width*0.08),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/chatmobile.png")),
                ],
              ),
            ),
            SizedBox(
              height: height*0.04,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Respect"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.04
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipisc- ing elit, sed do eiusmod tempor incididunt"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.03,
                          color: Color(0xff979696)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.04,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("How is customer rating calculated?"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.04
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width*0.1),
                  child: Container(
                    width: width*0.8,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipisc- ing elit, sed do eiusmod tempor incididunt"
                      ,style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.03,
                          color: Color(0xff979696)
                      ),
                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
