import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddedServices extends StatelessWidget {
  const AddedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(CupertinoIcons.arrow_left,color: Colors.black,size: 22.sp,),
        title: Center(
          child: Text("Added Services",
            style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600
            ),
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp),
              child: Card(
                elevation: 10.sp,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2, // Number of items in the list
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: firstFun(index),
                      );
                    },
                  ),
                ),
              ),

            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.sp,vertical: 10.sp),
              child: Card(
                elevation: 10.sp,
                child: Container(

                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 18.0.sp,vertical: 15.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text("Add More Service",style: GoogleFonts.roboto(
                               fontSize: 15.sp,
                               fontWeight: FontWeight.w500,
                         ),),
                        Icon(CupertinoIcons.right_chevron,size: 20.sp)

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.sp,vertical: 10.sp),
              child: Card(
                elevation: 10.sp,
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 18.0.sp,vertical: 15.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle
                                , border: Border.all(
                                color: Colors.black, // Border color
                                width: 2.0.sp,       // Border width
                              ),
                              ),

                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(CupertinoIcons.percent,size: 15.sp,),
                                )),
                            SizedBox(
                              width: 5.sp,
                            ),
                            Text("Apply Coupon",style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron,size: 20.sp)

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.sp,vertical: 10.sp),
              child: Card(
                elevation: 10.sp,
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 18.0.sp,vertical: 15.sp),
                    child:  Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Service Total",style: GoogleFonts.roboto(
                             fontSize: 15.sp,
                               color: Colors.grey,
                             fontWeight: FontWeight.w500
                           ),),
                           Text("₹ 2650",style: GoogleFonts.aBeeZee(
                               fontSize: 15.sp,
                               fontWeight: FontWeight.w800
                           ))

                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Promo Code",style: GoogleFonts.roboto(
                               fontSize: 15.sp,
                               color: Colors.grey,
                               fontWeight: FontWeight.w500
                           ),),
                           Text("₹ 2650",style: GoogleFonts.aBeeZee(
                               fontSize: 15.sp,
                               fontWeight: FontWeight.w800
                           ))

                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("GST (18%)",style: GoogleFonts.roboto(
                               fontSize: 15.sp,
                               color: Colors.grey,
                               fontWeight: FontWeight.w500
                           ),),
                           Text("₹ 2650",style: GoogleFonts.aBeeZee(
                               fontSize: 15.sp,
                               fontWeight: FontWeight.w800
                           ))

                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Commission Fee",style: GoogleFonts.roboto(
                               fontSize: 15.sp,
                               color: const Color(0xff0474ED),
                               fontWeight: FontWeight.w500
                           ),),
                           Text("Free",style: GoogleFonts.aBeeZee(
                               fontSize: 15.sp,
                               color: const Color(0xff0474ED),
                               fontWeight: FontWeight.w800
                           ))

                         ],
                       ),
                      const DottedLine(

                       ),
                       SizedBox(
                         height: 10.sp,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Grand Total",style: GoogleFonts.roboto(
                               fontSize: 16.sp,
                               fontWeight: FontWeight.w500
                           ),),
                           Text("₹ 2999",style: GoogleFonts.aBeeZee(
                               fontSize: 15.sp,
                               fontWeight: FontWeight.w800
                           ))

                         ],
                       ),

                     ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.sp),
              child: Card(
                  elevation: 10.sp,
                  child: Image(image: const AssetImage("assets/offer1.png"),height: Get.height*0.14,width: Get.width,fit: BoxFit.fill,)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0.sp,top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Sofa Cleaning",style: GoogleFonts.roboto(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0.sp),
              child: Row(
                children: [
                  Expanded(
                    child: Text("6143 reviews",style: GoogleFonts.roboto(
                        fontSize: 15.sp,

                    ),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp),
              child: Card(
                elevation: 10.sp,
                child: Container(
                  width: Get.width*0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2, // Number of items in the list
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: secondFun(),
                      );
                    },
                  ),
                ),
              ),

            ),



          ],
        ),
      ),
    );
  }
}
Widget firstFun(int index){
  return  Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.square,color: Color(0xff0088CC),size: 15.sp,),
              SizedBox(
                width: 5.sp,
              ),
              Text("Service",style: GoogleFonts.aBeeZee(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500
              )),
            ],
          ),
          Text("Bath Fitting",style: GoogleFonts.aBeeZee(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500
          ),)
        ],
      ),
      SizedBox(
        height: 5.sp,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Get.bottomSheet(Container(color: Colors.red,));
                },
                child: Text("View Service details",style: GoogleFonts.lato(
                  color: Color(0xff0088CC),
                  fontSize: 10.sp

                ),),
              ),
            ],
          ),
          Text("₹ 2650",style: GoogleFonts.aBeeZee(
              fontWeight: FontWeight.w800
          ))
        ],
      ),
      SizedBox(
        height: 10.sp,
      ),
      index==1?
      SizedBox()
          :DottedLine()
    ],
  );
}
Widget secondFun(){
  return Container(
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Padding(
           padding: EdgeInsets.only(left: 13.0.sp),
           child: SizedBox(
             width: Get.width*0.4,
             child: Column(
               mainAxisAlignment:MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                   Text("3 Sofa Sets",style: GoogleFonts.roboto(
                     fontWeight: FontWeight.bold,
                     fontSize: 16.7.sp
                   ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                   Text("6143 reviews",style: GoogleFonts.roboto(
                       fontWeight: FontWeight.w500,
                       fontSize: 15.sp
                   ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                   Row(

                     children: [
                       SizedBox(
                         width: Get.width*0.2,
                         child: Text("₹ 2650   ",style: GoogleFonts.roboto(
                             fontWeight: FontWeight.w500,
                             fontSize: 15.sp,
                           color: Color(0xff0088CC)
                         ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                       ),
                       SizedBox(
                         width: Get.width*0.2,
                         child: Text("45 mins",style: GoogleFonts.roboto(
                             fontWeight: FontWeight.w500,
                             fontSize: 15.sp
                         ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                       ),

                     ],
                   )

               ],
             ),
           ),
         ),
         Padding(
           padding: EdgeInsets.only(right: 18.0.sp),
           child: Container(
             decoration: BoxDecoration(
               border: Border.all(
                 color: Color(0xff0088CC),
                 width: 2.sp
               ),
               borderRadius: BorderRadius.circular(10.sp)
             ),
             child:  Padding(
               padding: EdgeInsets.symmetric(horizontal: 13.0,vertical: 5),
               child: Text("Add",style: GoogleFonts.roboto(
                 fontWeight: FontWeight.bold,
                 fontSize: 14.sp
               ),),
             ),
           ),
         )

       ],
     ),
  );
}
Widget BottomSheet(){
  return Container(
    decoration: BoxDecoration(

    ),
  );
}


