import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeserviceapplication/Controller/bookingsController.dart';

class BookingScreen extends StatelessWidget {
   BookingScreen({Key? key}) : super(key: key);
  final BookingScreenController bookingScreenController = Get.find();
  final List<String> items = List.generate(10, (index) => 'Card $index');
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(CupertinoIcons.arrow_left),
        title: Row(
          children: [
            Expanded(child: Center(child: Text("Booking history"))),
            Icon(Icons.menu)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Animated container for smooth card expansion
              Obx(()=>AnimatedSize(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: Column(
                  children: [
                    // Show the first card initially
                   giveCard(),


                    // Show all cards when "See More" is clicked
                    if (bookingScreenController.showAll.value)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 1, // Number of items in the list
                          itemBuilder: (context, index) {
                            return giveCard();
                          },
                        ),
                      )
                  ],
                ),
              )),
              // Animated button change between "See More" and "See Less"
             Obx(()=>Center(
               child: AnimatedCrossFade(
                 duration: Duration(milliseconds: 300),
                 firstChild: TextButton(
                   onPressed: () {
                     bookingScreenController.showAll.value = true;
                   },
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('View More',style: GoogleFonts.roboto(
                         color: Colors.black,
                         fontSize: width*0.04,
                         fontWeight: FontWeight.w600
                       ),),
                       Icon(Icons.keyboard_arrow_down,color: Colors.black,size: width*0.08,)
                     ],
                   ),
                 ),
                 secondChild: TextButton(
                   onPressed: () {
                     bookingScreenController.showAll.value= false;
                   },
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('View Less',style: GoogleFonts.roboto(
                           color: Colors.black,
                           fontSize: width*0.04,
                           fontWeight: FontWeight.w600
                       ),),
                       Icon(Icons.keyboard_arrow_up,color: Colors.black,size: width*0.08,)
                     ],
                   ),
                 ),
                 crossFadeState: bookingScreenController.showAll.value
                     ? CrossFadeState.showSecond
                     : CrossFadeState.showFirst,
               ),
             ))

            ],
          ),
        ),
      ),
      );

  }
  Widget giveCard(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffE2E2E2),width: 4)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(

              color: Colors.white,
              elevation: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start ,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 8,left: 8),
                    child: Container(
                        child: Image(image: AssetImage("assets/bookinghistory1.png"),fit: BoxFit.contain,)),
                  )
                  ,SizedBox(
                    width: Get.width*0.1,
                  )
                  , Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                     Card(


                       child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(20)
                        ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 12),
                           child: Text(
                             "Car Repairing",
                             style: GoogleFonts.roboto(
                               color: Color(0xff0088CC),
                               fontWeight: FontWeight.w700,
                               fontSize: Get.width*0.037
                             ),
                           ),
                         ),
                       ),
                     ),
                        Text(
                          "Car Repairing",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: Get.width*0.045
                          )
                        ),
                        rating(2, Get.width),
                        Text(
                          "Rs 349",
                          style: GoogleFonts.rubik(
                            color: Color(0xff0088cc),
                            fontSize: Get.width*0.036,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          "5252 reviews",
                          style: GoogleFonts.rubik(
                              color: Colors.black,
                            fontSize: Get.width*0.034
                          ),
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0,horizontal: Get.width*0.13),
              child: Divider(
                color: Color(0xffE2E2E2),  // Color of the line
                thickness: 4,         // Thickness of the line
              ),
            ),
            Row(
              children: [
                Text(
                  "Booking For",
                    style: GoogleFonts.roboto(
                      color: Color(0xff8D8D8D),
                    )

                ),
                Spacer(),
                Container(
                  width: Get.width*0.5,

                    child: Text("April 2024 | 10:00 AM",maxLines: 1,textAlign: TextAlign.end,
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                        ),
                      overflow: TextOverflow.ellipsis,
                    )
                )
              ],
            ),
            Row(
              children: [
                Text(
                    "Address",
                  style: GoogleFonts.roboto(
                    color: Color(0xff8D8D8D),
                    )
                  ),

                Spacer(),
                Container(
                    width: Get.width*0.5,
                    child: Text("Sikandarpur, Muzzafarpur, 84 A UttarPradesh India",maxLines: 1,textAlign: TextAlign.end,overflow: TextOverflow.ellipsis,style: GoogleFonts.lato(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),))
              ],
            )
          ],
        ),
      ),
    );
  }
   Widget rating(int num,double width){
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
}
