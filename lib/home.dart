import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';



class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override

  int topcenterImage = 3;
  int leftcenterImage = 2;
  int rightcenterImage = 5;
  int bottomcenterImage = 4;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF880E4F),
        body:
       Column(
         children: [

           SizedBox(height: 10,),

           Expanded(
             child: GestureDetector(
               onTap: (){
                 setState(() {
                   topcenterImage = Random().nextInt(5);
                 });
               },
               child: Container(
                 // color: Colors.blueGrey,
                 width: 200,
                 height: 200,
                 child: Image(image: AssetImage('images/dice$topcenterImage.png'),),
               ),
             ),
           ),

           SizedBox(height: 20,),

           Row(
             children: [

               SizedBox(width: 10,),

               Expanded(

                 child: GestureDetector(
                   onTap: (){
                     setState(() {
                       leftcenterImage = Random().nextInt(3);
                     });
                   },
                   child: Container(
                     // color: Colors.purple,
                     child: Image(image: AssetImage('images/dice$leftcenterImage.png'),),
                   ),
                 ),
               ),

               SizedBox(width: 10,),

               Expanded(
                 child: GestureDetector(
                   onTap: (){
                     setState(() {
                       rightcenterImage = Random().nextInt(5);
                     });
                   },
                   child: Container(
                     // color: Colors.pinkAccent,
                     child: Image(image: AssetImage('images/dice$rightcenterImage.png'),),
                   ),
                 ),
               ),
             ],
           ),

           SizedBox(height: 10,),

           Expanded(
             child: GestureDetector(
               onTap: (){
                 setState(() {
                   bottomcenterImage = Random().nextInt(4);
                 });
               },
               child: Container(
                 width: 200,
                 // color: Colors.tealAccent,
                 child: Image(image: AssetImage('images/dice$bottomcenterImage.png'),),
               ),
             ),
           ),


         ],
       )
      ),
    );
  }
}
