import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeserviceapplication/Constants/constants.dart';
import 'package:homeserviceapplication/Screens/Auth/phoneAuth.dart';
import 'package:homeserviceapplication/main.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.1),
            Center(child: Image(image: const AssetImage('assets/intro2.png'),height:height*0.4)),
            Stack(
              children: [
                Container(
                  height: height*0.5,
                  width: width,

                  decoration: BoxDecoration(
                      color: Color(0xffF2F9FD),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 28.0,right: 28),
                        child: Center(child: Text(provideService,style: TextStyle(
                            fontSize: width*0.06,
                            fontWeight: FontWeight.bold

                        ),textAlign: TextAlign.center,

                        )),
                      ),
                    ),
                    SizedBox(height: 40.sp),
                    InkWell(
                      onTap: (){
                        Get.off(PhoneAuth());
                      },
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        child: Container(
                          width: width*0.7,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff0088CC),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                          child: Center(child: Text("Get Started",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    )
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
