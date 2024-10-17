import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageAddress extends StatelessWidget {
  const ManageAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
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
                Text("Manage Address",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: width*0.05
                ),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                child:Center(
                  child: Container(
                    width: width*0.7,
                    decoration: BoxDecoration(
                      color: Color(0xffEFFAFF),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xff0088CC)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.plus,color: Color(0xff09BA30),),
                          SizedBox(
                            width: width*0.1,
                          ),
                          Expanded(child: Text("Add new address",style: TextStyle(
                            color: Color(0xff09BA30),
                            fontSize: width*0.04,
                            fontWeight: FontWeight.bold
                          ),))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Color(0xffCFCFCF), // Color of the line
                      thickness: 1,        // Thickness of the line
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Saved Address',style: TextStyle(
                      color: Color(0xff888888)
                    ),),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xffCFCFCF), // Color of the line
                      thickness: 1,        // Thickness of the line
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2, // Number of items in the list
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: width*0.1),
                  child: Container(
                    width: width*0.8,
                    decoration: BoxDecoration(
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
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.home),
                              Text("0 m")
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Container(
                              width: width*0.5,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Handling overflow in the first Text widget
                                  Text(
                                    "Sikandarpur, Muzzafarapur ",
                                    overflow: TextOverflow.ellipsis, // Add ellipsis if text is too long
                                    maxLines: 2,                     // Restrict to a single line
                                    style: TextStyle(
                                      fontSize: 16, // Adjust the font size as needed
                                    ),

                                  ),
                                  Text("824001"),
                                  Text(
                                    "9292929292",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.delete, size: 20, color: Color(0xffF3350B)),
                                      ),
                                      Icon(CupertinoIcons.share, size: 20, color: Color(0xffF3350B)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Expanded(child: Icon(Icons.edit_location_alt,color: Color(0xffF3350B),))

                        ],
                      ),
                    )
                  ),
                );
              },
            ),


          ],
        ),
      ),
    );
  }
}
