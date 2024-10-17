import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeserviceapplication/Screens/MyProfile/editProfile.dart';
import 'package:homeserviceapplication/Screens/MyProfile/manageAddress.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final list = ["Edit Profile","Manage Address","Language","Wallet","Settings","Help & FAQ","Privacy policy","Terms of Use"];
    final iconss = [Icons.person_3_rounded,CupertinoIcons.location_fill,Icons.language_outlined,Icons.wallet,CupertinoIcons.settings,Icons.help,Icons.privacy_tip_outlined,Icons.home_filled];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Color(0xff0088CC),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Padding(
                           padding: EdgeInsets.only(left: width*0.06),
                           child: Icon(CupertinoIcons.arrow_left,color: Colors.white,),
                         ),
                         SizedBox(width: width*0.25,),
                         Text("My Profile",style: TextStyle(
                          color: Colors.white,
                           fontWeight: FontWeight.bold,
                          fontSize: width*0.05
                         ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height*0.06,
                  ),
                  Center(
                    child: Container(
                      width: width*0.2,
                      height: width*0.2,
                      decoration: BoxDecoration(
                           shape: BoxShape.circle
                      ),
                      child: Image(image: AssetImage("assets/profile.png"),fit: BoxFit.cover,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Center(
                      child: Text("Name",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: width*0.045
                      ),),
                    ),
                  ),
                ],
              )
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.length, // Number of items in the list
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: width*0.1),
                    child: Container(
                        decoration: BoxDecoration(
                          border:  Border.all(
                            color: Colors.black, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(15),

                        ),
                      child: ListTile(
                        onTap: (){
                          if(index==0){
                             Get.to(EditProfile());
                          }else if(index==1){
                                 Get.to(ManageAddress());
                          }

                        },
                        leading: Icon(iconss[index],color: Color(0xff0088CC),),
                        title: Text(list[index],style: TextStyle(
                          color: Color(0xff484747),
                          fontSize: width*0.04,
                          fontWeight: FontWeight.w600
                        ),),
                        trailing: Icon(CupertinoIcons.right_chevron,color: Color(0xff222222),size: 20,),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
