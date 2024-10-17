import 'dart:async';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeserviceapplication/Controller/mainscreenController.dart';
import 'package:homeserviceapplication/Screens/Services/mainService.dart';

class Homescreen extends StatelessWidget {
   Homescreen({Key? key}) : super(key: key);
   final MainScreenController mainScreenController = Get.find();
   Widget rating(int num,double width){
     return Row(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Icon(Icons.star,color: num>=0 ?Color(0xff47B759):Colors.grey,size:width*0.04,),
         Icon(Icons.star,color: num>=1 ?Color(0xff47B759):Colors.grey,size:width*0.04),
         Icon(Icons.star,color: num>=2 ?Color(0xff47B759):Colors.grey,size:width*0.04),
         Icon(Icons.star,color: num>=3 ?Color(0xff47B759):Colors.grey,size:width*0.04),
         Icon(Icons.star,color: num>=4 ?Color(0xff47B759):Colors.grey,size:width*0.04),

       ],
     );
   }
   Widget rating2(int num,double width){
     return Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Icon(Icons.star,color: num>=0 ?Color(0xff47B759):Colors.grey,size:width*0.04,),
         Icon(Icons.star,color: num>=1 ?Color(0xff47B759):Colors.grey,size:width*0.04),
         Icon(Icons.star,color: num>=2 ?Color(0xff47B759):Colors.grey,size:width*0.04),
         Icon(Icons.star,color: num>=3 ?Color(0xff47B759):Colors.grey,size:width*0.04),
         Icon(Icons.star,color: num>=4 ?Color(0xff47B759):Colors.grey,size:width*0.04),

       ],
     );
   }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final popular = ["All","Cleaning","Repairing","Painting"];

    return Scaffold(
    backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Color(0xff0088CC),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.sp),bottomLeft: Radius.circular(20.sp))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                   height: 17.sp,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text("High Mohit",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text("Your address",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0,vertical: height*0.02),
                    child: Container(

                        decoration: BoxDecoration(
                            color: Color(0xffE6E6E6),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(
                                width: 10.sp,
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
      
      
                ],
              )
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                 Center(child: ImageSliderCard()),
                 SizedBox(
                   height: 10.sp,
                 ),

                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: 10.sp),
                   child: Card(
                     elevation: 8,
                     child: Container(
                       decoration: BoxDecoration(
                         border: Border(),
                         borderRadius: BorderRadius.circular(20.sp),
                         color: Colors.white,
                       ),
                       child: ListTile(
                         leading: Image(image: AssetImage('assets/star.png'),),
                         title: Text("Refer friends and earn",style: GoogleFonts.aBeeZee(
                           color: Color(0xff181818),
                           fontSize: 14.sp,
                             fontWeight: FontWeight.w600
                         ),),
                         subtitle: Text("Upto Rs 2500 cashback",style: GoogleFonts.aBeeZee(
                             color: Color(0xff181818),
                             fontSize: 12.sp,


                         ),),
                         trailing: Card(
                           elevation: 5,
                           shadowColor: Colors.grey,
                           child: Container(
                             decoration: BoxDecoration(
                               color: Color(0xff0088CC),
                               borderRadius: BorderRadius.circular(5),

                             ),
                             child: Padding(
                               padding: EdgeInsets.symmetric(horizontal: 10.0.sp,vertical: 7.sp),
                               child: Text("Invite",style: GoogleFonts.aBeeZee(
                                 color: Colors.white,
                                 fontSize: 12.sp
                               ),),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Card(
                    elevation: 8.sp,
                    child: Container(
                     decoration: BoxDecoration(
                       border: Border(),
                       borderRadius: BorderRadius.circular(20.sp),
                       color: Colors.white,
                     ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 12.0.sp,bottom: 7.sp,left: 13.sp),
                            child: Text("Services",style: GoogleFonts.aBeeZee(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                            ),),
                          ),

                          GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5, // 3 items per row
                              childAspectRatio: 0.9,   // Aspect ratio to control the height
                            ),
                            shrinkWrap: true, // Adjusts to the size of the content
                            physics: NeverScrollableScrollPhysics(), // Disables scrolling if you already have a scrollable parent
                            itemCount: 10, // Number of items in your grid
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  // Handle item taps here
                                  if(index==5){
                                    mainScreenController.count.value = 10;
                                  }
                                  if(index==4){
                                    mainScreenController.count.value = 8;
                                  }
                                  if(index==2){
                                    mainScreenController.count.value = 3;
                                  }
                                  if(index==3){
                                    mainScreenController.count.value = 4;
                                  }
                                  if(index==8){
                                    mainScreenController.count.value = 3;
                                  }
                                  if(index==9){
                                    mainScreenController.count.value = 15;
                                  }
                                  if(index==0){
                                    mainScreenController.count.value = 7;
                                  }
                                  if(index==7){
                                    mainScreenController.count.value = 7;
                                  }
                                  mainScreenController.curr.value = mainScreenController.servicesHere[index]; // Example
                                  Get.to(MainService());
                                },
                                child: Column(
                                  children: [
                                    Container(
                                       width:36.sp,
                                       height: 36.sp,

                                      decoration: BoxDecoration(
                                        color: mainScreenController.colorList[index],
                                        borderRadius: BorderRadius.circular(10.sp),
                                      ),
                                      child: Padding(
                                        padding:EdgeInsets.all(7.0.sp),
                                        child: Image.asset(
                                          "assets/${mainScreenController.assetPath[index]}.png",
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
                          ),

                        ],
                      ),


                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.0),
                    child: Card(
                      elevation: 7,
                      child: Container(
                        width: width*0.92,
                        decoration: BoxDecoration(
                          color: Color(0xffE2F4FE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: height*0.015),
                              child: SizedBox(
                                width: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Become a Partner",style: GoogleFonts.aBeeZee(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                      
                                      ),textAlign: TextAlign.center,),
                                      SizedBox(height: 6.sp,),
                                      InkWell(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff0088CC),
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(height*0.01),
                                            child: Text("Apply Now",style: GoogleFonts.aBeeZee(
                                              color: Colors.white,
                                                fontSize: 12.sp,
                                              fontWeight: FontWeight.w700
                                            ),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Image(image: AssetImage("assets/partner.png"))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.sp),
                    child:Row(
                      children: [
                        Text("Appliances",style: GoogleFonts.aBeeZee(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 130.sp,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3, // Number of items in the list
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.symmetric(vertical: 1.sp,horizontal: width*0.01),
                          child: Card(
                            elevation: 7,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical:height*0.007,horizontal: width*0.01),
                                child: Container(
                                  decoration:  BoxDecoration(
                                    color: Color(0xffE2F4FE),
                                    borderRadius: BorderRadius.circular(20),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image(image: AssetImage("assets/ac.png")),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: Container(
                                                  width: width*0.3,
                                                  child: Center(child: Text("Sparkling-Clean Bathroom",textAlign: TextAlign.center,style:
                                                  GoogleFonts.aBeeZee(
                                                    color: Colors.black,
                                                   fontSize: 12.sp,
                                                    fontWeight: FontWeight.w600
                                                  ),))),
                                            ),
                                            Text("Rs 728",style: GoogleFonts.aBeeZee(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700
                                            ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: const Color(0xff0088CC),
                                                    borderRadius: BorderRadius.circular(6.sp)
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 3.sp),
                                                  child: Text("Book Now",style: GoogleFonts.aBeeZee(
                                                      color: Colors.white,
                                                    fontSize: 11.sp
                                                  ),),
                                                ),
                                              ),
                                            )

                                          ],

                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 23.0),
                   child: Card(
                     elevation: 4,
                     child: Container(
                       decoration:  BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:  Radius.circular(20)),

                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 28.0),
                               child:Row(
                                 children: [
                                   Expanded(
                                     child: Text("Most Booked Service",style: GoogleFonts.lato(
                                         color: Colors.black,
                                         fontSize: width*0.044,
                                         fontWeight: FontWeight.w800
                                     ),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 23.0),
                                     child: Text("See All",style: GoogleFonts.aBeeZee(
                                       color: Color(0xff0088CC),
                                       fontWeight: FontWeight.bold,
                                       fontSize: width*0.04
                                     ),),
                                   )

                                 ],
                               ),
                             ),
                             Container(
                                 height: 220.sp,
                               color: Colors.white,
                               child: ListView.builder(
                               shrinkWrap: true,
                                 scrollDirection: Axis.horizontal,
                                 itemCount: 10, // Number of items in the list
                                 itemBuilder: (context, index) {
                                   return Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Card(
                                       elevation: 2,
                                       child: Container(
                                         height: 234,
                                         width: width*0.4,
                                         decoration:  BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(20),
                                       
                                         ),
                                         child: Column(
                                           children: [
                                             Image(image: AssetImage("assets/repair.png")),
                                              rating2(index%5,width),
                                              Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Text("AC repairing",style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: width*0.037
                                                ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                              ),
                                             Padding(
                                               padding: const EdgeInsets.all(1.0),
                                               child: Text("Starts at 299",maxLines: 1,overflow: TextOverflow.ellipsis,style: GoogleFonts.roboto(
                                                 fontSize: width*0.035,
                                               )),
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.all(1.0),
                                               child: Text("6222 reviews",maxLines: 1,overflow: TextOverflow.ellipsis,style: GoogleFonts.roboto(
                                                 fontSize: width*0.035,
                                               ),),
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.all(1.0),
                                               child: Text("Flat rs 120 0ff",style: GoogleFonts.roboto(
                                                 fontSize: width*0.035,
                                                 color: Color(0xff003580)
                                               ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                   );
                                 },
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text("Featured Services",style: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 23.0),
                        child: Text("See All",style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),
                      ),
                    ],
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2, // Number of items in the list
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: Card(
                          elevation: 4,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment:  MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: width*0.4,
                                      child: Center(child: Image(image: AssetImage("assets/repair.png"),fit: BoxFit.fill,))),
                                  SizedBox(
                                    width: 5.sp,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                                    child: Container(
                                      width: width*0.5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Clothes Cleaning",style: GoogleFonts.aBeeZee(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.sp
                                          ),),
                                          Row(
                                            children: [
                                              rating(index,width),
                                              Text("(33)",style: GoogleFonts.aBeeZee(
                                                fontSize: 12.sp,
                                                color: Colors.grey
                                              ),)
                                            ],
                                          ),
                                          Text("20% off",style: GoogleFonts.aBeeZee(
                                        color: Color(0xff47B759),
                                            fontSize: 11.sp
                                          ),),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                                            child: DottedLine(
                                              dashLength: 7.0.sp,
                                              dashGapLength: 4.0.sp,
                                              lineThickness: 2.0.sp,
                                              dashColor: Colors.grey.shade400,
                                            ),
                                          ),
                                          Text("50% Off Use Coupon Code- New 50",style: GoogleFonts.aBeeZee(
                                            fontSize: 10.sp,
                                            color: const Color(0xff0088CC)
                                          ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      );
                    },
                  ),
                 SizedBox(
                   height: 10,
                 ),
                  Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)
                  ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: height*0.03,horizontal: width*0.02),
                      child: Column(

                       children: [

                         Row(
                           children: [
                             Expanded(
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 18.0),
                                 child: Text("Most Popular Services",style: GoogleFonts.aBeeZee(
                                     color: Colors.black,
                                     fontSize: 15.sp,
                                     fontWeight: FontWeight.bold
                                 ),),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(right: 23.0),
                               child: Text("See All",style: GoogleFonts.aBeeZee(
                                   color: Color(0xff0088CC),
                                   fontWeight: FontWeight.bold,
                                   fontSize: 14.sp
                               ),),
                             ),
                           ],
                         ),
                         SizedBox(
                           height: 7.sp,
                         ),
                         SizedBox(
                           height: height*0.06,
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemCount: 4, // Number of items in the list
                             itemBuilder: (context, index) {
                               return Padding(
                                 padding: EdgeInsets.all(8.0.sp),
                                 child: Container(
                                   decoration: BoxDecoration(
                                       color: index==0?Color(0xff0088CC):Colors.white,
                                       borderRadius: BorderRadius.circular(10),
                                       border: Border.all(
                                           color: index==0?Colors.transparent:Color(0xff003580)
                                       )
                                   ), child:Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 12.sp),
                                   child: Center(child: Text(popular[index],style: GoogleFonts.aBeeZee(
                                       color: index==0?Colors.white:Color(0xff003580),
                                     fontSize: 12.sp
                                   ),),),
                                 ),
                                 ),
                               );
                             },
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 12.0.sp),
                           child: ListView.builder(
                             physics: NeverScrollableScrollPhysics(),
                             shrinkWrap: true,
                             itemCount: 1, // Number of items in the list
                             itemBuilder: (context, index)
                             {
                               return Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 10,),
                                 child: Container(

                                   child: Padding(
                                     padding: EdgeInsets.only(left: width*0.05),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Column(
                                               children: [
                                                 Image(image: AssetImage("assets/repair.png"),width: 100.sp,),
                                               ],
                                             ),
                                             SizedBox(
                                               width: 7.sp,
                                             ),
                                             Column(
                                               crossAxisAlignment: CrossAxisAlignment.center,
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [

                                                 Row(
                                                   mainAxisAlignment: MainAxisAlignment.start,
                                                   children: [
                                                     // SizedBox(width: width*0.1,),
                                                     Container(
                                                       width:width*0.3,

                                                       child: Column(
                                                         mainAxisAlignment: MainAxisAlignment.start,
                                                         crossAxisAlignment: CrossAxisAlignment.start,
                                                         children: [
                                                       
                                                           Text("Sofa Cleaning",style: GoogleFonts.aBeeZee(
                                                             color: Colors.black,
                                                             fontWeight: FontWeight.bold,
                                                             fontSize: width*0.04
                                                           ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                                           rating(index%5,width),
                                                           Text("Rs 2404",style: GoogleFonts.aBeeZee(
                                                             color: Color(0xff0088CC),
                                                             fontSize: width*0.036
                                                           ),maxLines: 1,overflow: TextOverflow.ellipsis),
                                                           Text("23222 reviews",maxLines: 1,overflow: TextOverflow.ellipsis,style: GoogleFonts.aBeeZee(
                                                            fontSize: 10.8.sp
                                             ))
                                                         ],
                                                       ),
                                                     ),
                                                     SizedBox(
                                                       width: width*0.04,
                                                     ),
                                                     Padding(
                                                       padding: EdgeInsets.only(top: 50.sp),
                                                       child: Container(
                                                         decoration: BoxDecoration(
                                                             color: Color
                                                               (0xff0088CC),
                                                             borderRadius: BorderRadius.circular(10.sp)
                                                         ),
                                                         child: Padding(
                                                           padding:  EdgeInsets.symmetric(horizontal: 23.0.sp,vertical: 6.sp),
                                                           child: Text("Add",style: GoogleFonts.aBeeZee(
                                                               color: Colors.white,
                                                             fontSize: 12.sp
                                                           ),),
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
                                           height: 10.sp,
                                         ),
                                         Text("• Dry vacuuming to clean crumbs and dirt particles.",style: GoogleFonts.aBeeZee(
                                             color: Color(0xff595858),
                                             fontSize: 11.sp
                                         ),maxLines: 2,overflow: TextOverflow.ellipsis,),
                                         Text("• Wet shampooing and vacuuming to remove tough stains and spillages.",style: GoogleFonts.aBeeZee(
                                             color: Color(0xff595858),
                                             fontSize: 11.sp,

                                         ),
                                           maxLines: 2,overflow: TextOverflow.ellipsis,
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),

                               );
                             },
                           ),
                         ),
                       ],
                                         ),
                    ),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,bottom: 6),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text("Grooming Essentials",style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.sp),
                          child: Text("See All",style: GoogleFonts.aBeeZee(
                              color: Color(0xff0088CC),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp
                          ),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                     height: 200,
                    // color: Colors.black,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4, // Number of items in the list
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Container(
                            child: Stack(
                              children: [
                                Center(child: Image(image: AssetImage("assets/cutting.png"),fit: BoxFit.fill)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Center(
                                      child: Container(
                                        width: 150,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 4.0.sp,vertical: 3.sp),
                                          child: Center(child: Text("Haircut and beard grooming",style: GoogleFonts.aBeeZee(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.sp
                                          ),maxLines: 2, overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,),),
                                        ),
                                      ),
                                    )
                                    // Padding(
                                    //   padding: const EdgeInsets.only(left: 38.0),
                                    //   child:
                                    //   Center(child: Text("Haircut and beard grooming",style: GoogleFonts.aBeeZee(
                                    //     color: Colors.white,
                                    //     fontWeight: FontWeight.bold,
                                    //     fontSize: width*0.04
                                    //   ),maxLines: 2, overflow: TextOverflow.ellipsis,),),
                                    // ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );

                      },
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(12.0.sp),
                    child: Card(
                      elevation: 30,
                      child: Container(
                        width: width,
                        height: width*0.8,
                        decoration: BoxDecoration(
                                 color: Colors.white,
                                borderRadius: BorderRadius.circular(20.sp),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(13.0.sp),
                          child: Stack(
                            children: [
                              Image(image: AssetImage("assets/services.png"),fit: BoxFit.cover,),
                              Padding(
                                padding: EdgeInsets.only(left: 37.sp,top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 100.sp,
                                      child: Text(
                                        "AC Repairing",textAlign: TextAlign.center,style: GoogleFonts.aBeeZee(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500
                                      ),),
                                    ),
                                    SizedBox(
                                      height: 25.sp,
                                    ),
                                    Container(
                                      width: width*0.3,
                                      child: Text(
                                        "Split System Services",textAlign: TextAlign.start,style: GoogleFonts.aBeeZee(
                                          color: Colors.white,
                                          fontSize: 22.sp,
                                        fontWeight: FontWeight.w900
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 18.0.sp),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(6.sp)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 15.0.sp,vertical: 4.sp),
                                          child: Text("Explore",style: GoogleFonts.aBeeZee(
                                            color: Colors.white,
                                            fontSize: 15.sp
                                          ),),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0.sp),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text("AC and appliance repair",style: GoogleFonts.aBeeZee(
                                shadows: [
                                  Shadow(
                                    offset: Offset(1.0, 1.0), // Position of the shadow
                                    blurRadius: 2.0, // How much the shadow should blur
                                    color: Colors.grey.withOpacity(0.5), // Shadow color and opacity
                                  ),
                                ],

                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600
                            ),),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 180.sp,
                    // color: Colors.black,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4, // Number of items in the list
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Stack(
                              children: [
                                Center(child: Image(image: AssetImage("assets/cutting.png"),fit: BoxFit.fill)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Center(
                                      child: Container(
                                        width: 130.sp,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                                          child: Center(child: Text("AC Service and repair",style: GoogleFonts.aBeeZee(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.sp
                                          ),maxLines: 2, overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,),),
                                        ),
                                      ),
                                    )
                                    // Padding(
                                    //   padding: const EdgeInsets.only(left: 38.0),
                                    //   child:
                                    //   Center(child: Text("Haircut and beard grooming",style: GoogleFonts.aBeeZee(
                                    //     color: Colors.white,
                                    //     fontWeight: FontWeight.bold,
                                    //     fontSize: width*0.04
                                    //   ),maxLines: 2, overflow: TextOverflow.ellipsis,),),
                                    // ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );

                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'Thoughtful curation\n', // Regular text before 'finest'
                                style: GoogleFonts.aBeeZee(
                                  color: Color(0xff0088CC),
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0), // Position of the shadow
                                      blurRadius: 3.0, // How much the shadow should blur
                                      color: Colors.grey.withOpacity(0.5), // Shadow color and opacity
                                    ),
                                  ],
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'of our ', // Regular text after 'finest'
                                    style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w400,

                                    ),
                                  ),
                                  TextSpan(
                                    text: 'finest', // Cursive part
                                    style: GoogleFonts.dancingScript(
                                      color: Color(0xff0088CC),
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' experience', // Regular text after 'finest'
                                    style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )

                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 180.sp,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4, // Number of items in the list
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              const Center(child: Image(image: AssetImage("assets/cutting.png"),fit: BoxFit.fill)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Center(
                                    child: SizedBox(
                                      width: 100.sp,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0.sp,vertical: 5.sp),
                                        child: Center(child: Text("Men's \nHaircut",style: GoogleFonts.breeSerif(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp
                                        ),maxLines: 2, overflow: TextOverflow.ellipsis,textAlign: TextAlign.start,),),
                                      ),
                                    ),
                                  )
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 38.0),
                                  //   child:
                                  //   Center(child: Text("Haircut and beard grooming",style: GoogleFonts.aBeeZee(
                                  //     color: Colors.white,
                                  //     fontWeight: FontWeight.bold,
                                  //     fontSize: width*0.04
                                  //   ),maxLines: 2, overflow: TextOverflow.ellipsis,),),
                                  // ),
                                ],
                              )
                            ],
                          ),
                        );

                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
class ImageSliderCard extends StatefulWidget {
  @override
  _ImageSliderCardState createState() => _ImageSliderCardState();
}

class _ImageSliderCardState extends State<ImageSliderCard>
{
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  Timer? _timer;

  final List<String> _images = [
    'assets/offer1.png',
    'assets/offer2.png',
    'assets/offer3.png',
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).size.height*0.2,
      child: Card(
        elevation: 5,
        child: PageView.builder(
          controller: _pageController,
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return Image(
              image: AssetImage(_images[index]),
              fit: BoxFit.fill,
            );
          },
        ),
      ),
    );
  }
}

//Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                        color: index==0?Color(0xff0088CC):Colors.white,
//                                        borderRadius: BorderRadius.circular(10),
//                                        border: Border.all(
//                                            color: index==0?Colors.transparent:Color(0xff003580)
//                                        )
//                                    ), child:Padding(
//                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                                    child: Center(child: Text(popular[index],style: GoogleFonts.aBeeZee(
//                                        color: index==0?Colors.white:Color(0xff003580)
//                                    ),),),
//                                  ) ,
//                                  ),
//                                );