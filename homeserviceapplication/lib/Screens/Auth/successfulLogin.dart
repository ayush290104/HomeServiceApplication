import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeserviceapplication/Screens/Location/PickLocation.dart';
import 'package:homeserviceapplication/Screens/MainScreen/mainscreen.dart';
import 'package:homeserviceapplication/Screens/Splash/logo.dart';
class Successfullogin extends StatelessWidget {
  const Successfullogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Get.off(MainScreen());
    });
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          
           children: [
             SizedBox(height: height*0.1),
               Center(
                 child: Text("Login Successful",style: TextStyle(
                   fontSize: width*0.09,
                   color: Colors.black
                 ),),
               ),
             SizedBox(
               height: height*0.15,
             ),
             const Image(image: AssetImage('assets/congrats.png')),
             SizedBox(height: 10),
             Text('Congratulations!',style: TextStyle(
              fontSize: width*0.07,
               fontWeight: FontWeight.bold,
               color: Color(0xff0088CC)
             )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.2),
              child: Center(child: Text("Your account  is ready to use. You will be redirected to the Home page in a few seconds.",style: TextStyle(
                color: const Color(0xff8F8F8F),
                fontSize: width*0.035
              ),)),
            ),
             SizedBox(
               height: height*0.05,
             ),
             const Image(image: AssetImage('assets/loading.png'))
           ],
        ),
      ),
    );
  }
}
