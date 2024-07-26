import 'package:flutter/material.dart';
import 'dart:async';
import 'package:labinspo/home.dart';

class dyce extends StatefulWidget {
  const dyce({super.key});

  @override
  State<dyce> createState() => _dyceState();
}

class _dyceState extends State<dyce> {
  @override

  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => home())));

  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(

          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Center(
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('images/dice.png'),
                  ),
                ),
                SizedBox(height: 50,),
                Text(
                  'CLick on any dice and generate random number',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(height: 100,),
                CircularProgressIndicator(
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
