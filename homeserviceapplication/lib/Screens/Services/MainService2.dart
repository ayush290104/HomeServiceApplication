import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeserviceapplication/Controller/mainscreenController.dart';
import 'package:homeserviceapplication/Screens/Cart/addedServices.dart';
import 'package:homeserviceapplication/main.dart';

import 'mainService.dart';

class MainService2 extends StatelessWidget {
   MainService2({super.key});
  final MainScreenController mainScreenController = Get.find();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff047DB9),
       leading: Icon(CupertinoIcons.arrow_left,color: Colors.white,size: 22.sp,),
        title: Row(
          children: [
            Expanded(child: Obx(()=>Text(mainScreenController.curr2.value,

              style: GoogleFonts.lato(
                   color: Colors.white,
                   fontSize: 20.sp,
                   fontWeight: FontWeight.w500
            ),
            ))),
            Icon(Icons.search,color: Colors.white,size: 22.sp,)

          ],
        ),

      ),
      body: Stack(
        children: [

          ListView.builder(
            shrinkWrap: true,
            itemCount: 6, // Number of items in the list
            itemBuilder: (context, index) {
              return Padding(
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
                                        child: InkWell(

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
    );
  }
}
