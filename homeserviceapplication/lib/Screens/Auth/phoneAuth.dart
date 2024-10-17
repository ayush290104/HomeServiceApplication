import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeserviceapplication/Screens/Auth/otp.dart';
import 'package:homeserviceapplication/main.dart';

class PhoneAuth extends StatelessWidget {
  const PhoneAuth({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
            backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55.0,right: 100),
              child: Text('Create Your Account',style: GoogleFonts.aBeeZee(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.sp),),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Container(
              width: width*0.8,
              height: 49,
              decoration: BoxDecoration(
                color: Color(0xffECF9FF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  const CountryCodePicker(),
                  SizedBox(
                    width: width*0.45.sp,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10)
                      ],
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                          hintText: "Phone Number",
                        ),
        
        
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: false, onChanged: (val){},focusColor : Color(0xff0088CC),),
                 Text("Remember Me",style: TextStyle(
                   fontSize: 12.sp
                 ),)
                ],
              ),
            ),
            SizedBox(height: height*0.03,),
            InkWell(
              child: Container(
                width: width*0.7.sp,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xff0088CC),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
        
                child: InkWell(
                    onTap: (){
                       Get.off(EnterOtp());
                    },
                    child: Center(child: Text("Send Code",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),))),
              ),
            ),
            const SizedBox(height: 20,),
            Text("or continue with",style: GoogleFonts.aBeeZee(color: CupertinoColors.systemGrey2),),
            SizedBox(height: height*0.03,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('assets/facebook.png'),width: width*0.1,),
                Image(image: AssetImage('assets/google.png'),width: width*0.1),
                Image(image: AssetImage('assets/apple.png'),width: width*0.1)
              ],
            ),
            SizedBox(height: height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",style: GoogleFonts.roboto(),),
                InkWell(child: Text("Sign In",style: GoogleFonts.roboto(color: Color(0xff0088CC),decoration: TextDecoration.underline),)),
              ],
            )
        
        
        
        
          ],
        ),
      ),


    );
  }
}
