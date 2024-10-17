import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         leading: Icon(CupertinoIcons.arrow_left),
         title: Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Expanded(child: Center(child: Text("Notification"))),
             IconButton(icon:Icon(Icons.menu), onPressed: () {  },)
           ],
         ),


      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:  Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3, // Number of items in the list
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0,top: 10),
                        child: Text("Today",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: width*0.04
                        ),),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 2, // Number of items in the list
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5), // Shadow color
                                    spreadRadius: 5, // Spread radius
                                    blurRadius: 7, // Blur radius
                                    offset: Offset(0, 3), // Shadow position (x, y)
                                  ),
                                ],

                              ),
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 18.0,bottom: 18),
                                 child: Row(

                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 28.0),
                                       child: Container(
                                         decoration: BoxDecoration(
                                           color: Color(0xff0088CC),
                                           shape: BoxShape.circle
                                         ),
                                         child: Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Icon(Icons.wallet,color: Colors.white,),
                                         ),
                                       ),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 18.0),
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Payment Successful",style: TextStyle(
                                             color: Colors.black,
                                             fontWeight: FontWeight.bold
                                           ),),
                                           Text("You have made a services payment",style: TextStyle(
                                               color: Colors.black,

                                           ),),

                                         ],
                                       ),
                                     )

                                   ],
                                 ),
                               ),
                            ),
                          );
                        },
                      ),
                    ],
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
