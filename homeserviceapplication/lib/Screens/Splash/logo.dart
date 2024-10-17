import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeserviceapplication/Screens/Splash/intro1.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Future.delayed(const Duration(seconds: 1), () {
      // Replace 'NextScreen' with your destination screen
      // Navigator.pop(context);
      Get.off(const Intro1());

    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: const AssetImage('assets/logo.png'),height:height*0.2))
        ],
      )


    );
  }
}
