import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeserviceapplication/Controller/otpController.dart';
import 'package:homeserviceapplication/Screens/Auth/successfulLogin.dart';
import 'package:homeserviceapplication/main.dart';

class EnterOtp extends StatelessWidget {
  const EnterOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    const phone = "9192*****02";
    final OtpController otpController = Get.put(OtpController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.04),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.1.sp),
              child: Text("Enter Otp",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 30.sp,fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 25.sp),
            Center(child: Text("Code has been sent to $phone",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16.sp),)),
            SizedBox(height: 20.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() {
                  return  Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                        color: (otpController.curr.value==0)?Color(0xffE3F6FF):Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        onTap: (){
                          otpController.curr.value = 0;
                        },
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                            otpController.curr.value = 1;
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xffE3F6FF), width: 3.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            border: InputBorder.none
                        ),


                      ),
                    ),
                  );
                }),
                Obx(() {
                  return  Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                        color: (otpController.curr.value==1)?Color(0xffE3F6FF):Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        onTap: (){
                          otpController.curr.value = 1;
                        },
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                            otpController.curr.value = 2;
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xffE3F6FF), width: 3.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            border: InputBorder.none
                        ),


                      ),
                    ),
                  );
                }),
                Obx(() {
                  return  Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                        color: (otpController.curr.value==2)?Color(0xffE3F6FF):Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        onTap: (){
                            otpController.curr.value = 2;

                        },
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                            otpController.curr.value = 3;
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xffE3F6FF), width: 3.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            border: InputBorder.none
                        ),


                      ),
                    ),
                  );
                }),
                Obx(() {
                  return  Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                        color: (otpController.curr.value==3)?Color(0xffE3F6FF):Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        onTap: (){
                          otpController.curr.value = 3;
                        },
                        onChanged: (value){
                          if(value.length==1){
                            // FocusScope.of(context).nextFocus();
                            // otpController.curr.value = 0;
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xffE3F6FF), width: 3.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            border: InputBorder.none
                        ),


                      ),
                    ),
                  );
                }),
              ],
            ),
            SizedBox(height: height*0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Resend code in ",style: GoogleFonts.roboto(
                  fontSize: 16.sp
                ),),
                Text("30 sec",style: GoogleFonts.roboto(
                    fontSize: 16.sp,
                  color: const Color(0xff0088CC)
                ),)
                
              ],
            ),
            SizedBox(
              height: 60.sp,
            ),
            InkWell(
              onTap: () {
                Get.off(Successfullogin());
              },
              child: Card(
                elevation: 20,
                child: Container(
                  width: width*0.5.sp,
                  decoration: const BoxDecoration(
                      color: Color(0xff0088CC),
                      borderRadius: BorderRadius.all(Radius.circular(10)),

                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0.sp),
                    child: Center(child: Text("Verify",style: GoogleFonts.roboto(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),)),
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
