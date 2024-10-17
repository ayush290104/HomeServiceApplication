import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:homeserviceapplication/Controller/bookingsController.dart';
import 'package:homeserviceapplication/Controller/mainscreenController.dart';
import 'package:homeserviceapplication/Screens/Auth/otp.dart';
import 'package:homeserviceapplication/Screens/Auth/phoneAuth.dart';
import 'package:homeserviceapplication/Screens/Auth/successfulLogin.dart';
import 'package:homeserviceapplication/Screens/Services/mainService.dart';
import 'package:homeserviceapplication/Screens/Splash/intro1.dart';

import 'Screens/Splash/intro2.dart';
import 'Screens/Splash/logo.dart';

void main() {
  runApp(MyApp());

  // Set the status bar color
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);

}

class MyApp extends StatelessWidget {
  MyApp({super.key});
   final BookingScreenController bookingScreenController = Get.put(BookingScreenController());
  final MainScreenController mainScreenController = Get.put(MainScreenController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
          home: Logo(),
      ),
    );
}
}
