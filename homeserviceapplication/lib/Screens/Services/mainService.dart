import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeserviceapplication/Controller/mainscreenController.dart';
import 'package:homeserviceapplication/Screens/Services/MainService2.dart';
import 'package:homeserviceapplication/main.dart';

import '../Cart/addedServices.dart';

class MainService extends StatelessWidget {
  MainService({super.key});

  final MainScreenController mainScreenController = Get.find();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    debugPrint("mainScreenController.mainServiceAsset[mainScreenController.curr] = ${mainScreenController.mainServiceAsset[mainScreenController.curr]}");
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF88BED9),
                      Color(0xFF5492B1),
                      Color(0xFF2286B8),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(20.sp)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: const Icon(CupertinoIcons.arrow_left),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image(image: AssetImage("assets/worker.png"),height: 230.sp,),
                        Padding(
                          padding: EdgeInsets.only(bottom: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.05 .sp),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Obx(
                                      () => Text(
                                        "${mainScreenController.curr} ..",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 27.sp),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFDD837),
                                          size: 27.sp,
                                        ),
                                        Text(
                                          "5.2",
                                          style: TextStyle(
                                              color: Color(0xffFDD837),
                                              fontSize: 24.sp,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.055),
                                child: Text(
                                  "Which service you need today?",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 13.sp),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.1),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Divider(
                                    color: Colors.white,
                                    // The color of the line
                                    thickness: 2.0, // The thickness of the line
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),

          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 70.sp,
                        decoration: BoxDecoration(),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5, // Number of items in the list
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                elevation: 5,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.sp),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage("assets/offericon.png"),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 6.sp),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Special 25% off",
                                                  style: GoogleFonts.aBeeZee(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 13.sp),
                                                ),
                                                Text("Special Promo only today",
                                                    style: GoogleFonts.roboto(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 11.sp))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                            );
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(4.0.sp),
                        child: Obx(()=> GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5, // 3 items per row
                            childAspectRatio: 0.9,   // Aspect ratio to control the height
                          ),
                          shrinkWrap: true, // Adjusts to the size of the content
                          physics: NeverScrollableScrollPhysics(), // Disables scrolling if you already have a scrollable parent
                          itemCount: mainScreenController.count.value, // Number of items in your grid
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: (){

                              Get.to(MainService2());
                              mainScreenController.curr2.value = mainScreenController.servicesHere[index];
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width:40.sp,
                                    height: 40.sp,
                                    decoration: BoxDecoration(
                                      color: mainScreenController.colorList[index],
                                      borderRadius: BorderRadius.circular(10.sp),
                                    ),
                                    child: Padding(
                                      padding:EdgeInsets.all(7.0.sp),
                                      child: Image(
                                        image: AssetImage("assets/bcl.png"),
                                        fit: BoxFit.fill,// Icon image asset
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3.sp),
                                  Text(
                                    textAlign: TextAlign.center,
                                    mainScreenController.servicesHere[index], // Example names for each item
                                    style: GoogleFonts.aBeeZee(fontSize: 12.sp,fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.sp, vertical: 10.sp),
                        child: Divider(
                          color: Color(0xffB5B5B9),
                          thickness: 2,
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6, // Number of items in the list
                        itemBuilder: (context, index) {
                          return index == 4
                              ? Container(

                                  height: 120.sp,
                                  child: Image(
                                    image: AssetImage("assets/getservice.png") ,
                                    fit: BoxFit.fill,
                                  ))
                              : Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.sp, vertical: 10.sp),
                                  child: Card(
                                    elevation: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.sp),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.sp),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Image(
                                                      image: AssetImage(
                                                          "assets/repair.png"),
                                                      width: width * 0.3 . sp,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: width * 0.03.sp,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [

                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment.start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Sofa Cleaning",
                                                              style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontWeight:
                                                                      FontWeight.bold,
                                                                  fontSize:
                                                                      13.sp),
                                                            ),
                                                            rating(index % 5, width),
                                                            Text(
                                                              "Rs 2404",
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0088CC),
                                                                  fontSize:
                                                                      13.sp),
                                                            ),
                                                            Text("23222 reviews")
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: width * 0.04,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 50),
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    Color(0xff0088CC),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          23.0,
                                                                      vertical: 6),
                                                              child: Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color:
                                                                        Colors.white),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "• Dry vacuuming to clean crumbs and dirt particles.",
                                              style: TextStyle(
                                                  color: Color(0xff595858),
                                                  fontSize: width * 0.03),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Text(
                                              "• Wet shampooing and vacuuming to remove tough stains and spillages.",
                                              style: TextStyle(
                                                color: Color(0xff595858),
                                                fontSize: width * 0.03,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width*0.1.sp,vertical: 20.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          decoration:BoxDecoration(
                              color: Color(0xff0088CC),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: Get.width*0.4.sp,
                                  //color: Colors.black,
                                  child: Text("2 services added",style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 15.sp
                                  ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                ),
                                InkWell(
                                  onTap: (){
                                    Get.to(AddedServices());
                                  },
                                  child: Row(

                                    children: [
                                      SizedBox(
                                        width: Get.width*0.1.sp,
                                        // color: Colors.black,
                                        child: Text("View",style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 16.sp
                                        ),maxLines: 1,overflow: TextOverflow.ellipsis),
                                      ),
                                      SizedBox(width: 5.sp),
                                      Icon(CupertinoIcons.right_chevron,color: Colors.white,)

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width*0.1.sp,vertical: 20.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Center(
                            child: Image(image: AssetImage("assets/cartadded.png"),width: 60.sp,)
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

Widget getContainer(double width) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: Color(0xffFFD29E),
            borderRadius: BorderRadius.circular(18.sp),
            border: Border.all(color: Color(0xffFF8C06), width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage("assets/bathfitting.png")
            ,fit: BoxFit.cover,
          ),
        ),
      ),
      Center(
          child: Text(
        "Bath Fitting",
        textAlign: TextAlign.center,
      ))
    ],
  );
}

Widget rating(int num, double width) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.star,
        color: num >= 0 ? Color(0xff47B759) : Colors.grey,
        size: width * 0.04,
      ),
      Icon(Icons.star,
          color: num >= 1 ? Color(0xff47B759) : Colors.grey,
          size: width * 0.04),
      Icon(Icons.star,
          color: num >= 2 ? Color(0xff47B759) : Colors.grey,
          size: width * 0.04),
      Icon(Icons.star,
          color: num >= 3 ? Color(0xff47B759) : Colors.grey,
          size: width * 0.04),
      Icon(Icons.star,
          color: num >= 4 ? Color(0xff47B759) : Colors.grey,
          size: width * 0.04),
    ],
  );
}
