import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeserviceapplication/Controller/mainscreenController.dart';
import 'package:homeserviceapplication/Screens/MainScreen/bookingscreen.dart';
import 'package:homeserviceapplication/Screens/MainScreen/homescreen.dart';
import 'package:homeserviceapplication/Screens/MainScreen/notification.dart';
import 'package:homeserviceapplication/Screens/MainScreen/profile.dart';
import 'package:homeserviceapplication/Screens/MainScreen/ratingscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Page(),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          fixedColor: Colors.blue,
          backgroundColor: Colors.blue,
          currentIndex: selected,
          onTap: (i){
            //Get.snackbar("hello ${i}", "");
            selected = i;
            setState(() {

            });
          },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.book),label: "Bookings"),
            BottomNavigationBarItem(icon: Icon(Icons.star),label: "Rating"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: "Profile")

          ] ),
    );

  }
  Widget Page(){
    if(selected==0){
      return Homescreen();
    }else if(selected==1){
      return BookingScreen();
    }else if(selected==2){
      return RatingScreen();
    }else if(selected==3){
      return NotificationScreen();
    }else{
      return ProfileScreen();
    }
  }
}





