import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class EditProfile extends StatelessWidget {
   EditProfile({Key? key}) : super(key: key);
   File? _image;
   final ImagePicker _picker = ImagePicker();

   Future<void> _pickImage() async {
     // Request permission
     final status = await Permission.storage.request();

     if (status.isGranted) {
       final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

       if (pickedFile != null) {
           _image = File(pickedFile.path);

       }
     } else if (status.isDenied) {
       // Handle the situation when permission is denied
       Get.snackbar("Permission denied","");
     } else if (status.isPermanentlyDenied) {
       // Handle the situation when permission is permanently denied
       openAppSettings();
     }
   }
   void _showBottomSheet(BuildContext context) {
     showModalBottomSheet(
       context: context,
       builder: (BuildContext context) {
         return Container(
           height: MediaQuery.of(context).size.height*0.4,
           decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children:[

               Padding(
                 padding: const EdgeInsets.only(top: 18.0),
                 child: Center(
                   child: Text("Change Profile Photo",
                     style: TextStyle(
                         fontSize: MediaQuery.of(context).size.width*0.06,
                         fontWeight: FontWeight.w600
                     ),),
                 ),
               ),
               Divider(
                 color: Color(0xffDCDCDC), // Line color
                 thickness: 1,        // Line thickness
                 indent: 40,          // Space before the line starts
                 endIndent: 40,       // Space after the line ends
               ),
               InkWell(
                 onTap: (){
                   _pickImage();
                 },
                 child: Padding(
                   padding: const EdgeInsets.only(top: 18.0,left: 30),
                   child: Text("Upload Photo",
                     textAlign: TextAlign.start,
                     style: TextStyle(
                       fontSize: MediaQuery.of(context).size.width*0.05,
                       // fontWeight: FontWeight.w600,
                       color: Color(0xff0088CC),

                     ),),
                 ),
               ),
               Divider(
                 color: Color(0xffDCDCDC), // Line color
                 thickness: 1,        // Line thickness
                 indent: 20,          // Space before the line starts
                 endIndent: 40,       // Space after the line ends
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 18.0,left: 30),
                 child: Text("Remove Photo",
                   textAlign: TextAlign.start,
                   style: TextStyle(
                     fontSize: MediaQuery.of(context).size.width*0.05,
                     // fontWeight: FontWeight.w600,
                     color: Color(0xffFA3B11),

                   ),),
               ),
               Divider(
                 color: Color(0xffDCDCDC), // Line color
                 thickness: 1,        // Line thickness
                 indent: 40,          // Space before the line starts
                 endIndent: 40,       // Space after the line ends
               ),
               InkWell(
                 onTap: (){
                   Get.back();
                 },
                 child: Padding(
                   padding: const EdgeInsets.only(top: 18.0,left: 30),
                   child: Text("Cancel",
                     textAlign: TextAlign.start,
                     style: TextStyle(
                       fontSize: MediaQuery.of(context).size.width*0.05,
                       // fontWeight: FontWeight.w600,
                       color: Colors.black,

                     ),),
                 ),
               ),
             ],
           ),
         );
       },
     );
   }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height*0.10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width*0.06),
                        child: Icon(CupertinoIcons.arrow_left,color: Colors.black,),
                      ),
                      SizedBox(width: width*0.25,),
                      Text("My Profile",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: width*0.05
                      ),)
                    ],
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                       _showBottomSheet(context);
                      }, // Trigger the image picker on tap
                      child:  CircleAvatar(
                        radius: 50, // Size of the circle
                        backgroundImage: _image != null
                            ? FileImage(_image!) // Display the picked image
                            : AssetImage('assets/profile.png') as ImageProvider, // Default image
                        backgroundColor: Colors.grey[200], // Background color if no image
                      ),
              
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: width*0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 1.0, // Border width
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff5A5A5A), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 1, // Blur radius
                          offset: Offset(1,1), // Shadow position (x, y)
                        ),
              
                      ],
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                      child: Text(
                        "Name",
                        style: TextStyle(
                          color: Color(0xffA6A6A6),
                          fontSize: width*0.04,
                          fontWeight: FontWeight.normal
              
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: width*0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 1.0, // Border width
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff5A5A5A), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 1, // Blur radius
                          offset: Offset(1,1), // Shadow position (x, y)
                        ),
              
                      ],
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Mobile",
                              style: TextStyle(
                                  color: Color(0xffA6A6A6),
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.normal
              
                              ),
                            ),
                          ),
                          Text("Change",style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: width*0.04
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: width*0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 1.0, // Border width
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff5A5A5A), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 1, // Blur radius
                          offset: Offset(1,1), // Shadow position (x, y)
                        ),
              
                      ],
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Email-Id",
                              style: TextStyle(
                                  color: Color(0xffA6A6A6),
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.normal
              
                              ),
                            ),
                          ),
                          Text("Change",style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: width*0.04
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: width*0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 1.0, // Border width
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff5A5A5A), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 1, // Blur radius
                          offset: Offset(1,1), // Shadow position (x, y)
                        ),
              
                      ],
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                      child: Text(
                        "Date of birth",
                        style: TextStyle(
                            color: Color(0xffA6A6A6),
                            fontSize: width*0.04,
                            fontWeight: FontWeight.normal
              
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: width*0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 1.0, // Border width
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff5A5A5A), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 1, // Blur radius
                          offset: Offset(1,1), // Shadow position (x, y)
                        ),
              
                      ],
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                      child: Text(
                        "Gender",
                        style: TextStyle(
                            color: Color(0xffA6A6A6),
                            fontSize: width*0.04,
                            fontWeight: FontWeight.normal
              
                        ),
                      ),
                    ),
              
                  ),
              
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Container(
              width: width*0.7,
              height: 40,
              decoration: const  BoxDecoration(
                  color: Color(0xff0088CC),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                  ,boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xff5A5A5A), // Shadow color
                  spreadRadius: 0, // Spread radius
                  blurRadius: 4, // Blur radius
                  offset: Offset(1,1), // Shadow position (x, y)
                ),
              ]
              ),
              child: Center(child: Text("Save Changes",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          ),

        ],
      ),
    );
  }
}






