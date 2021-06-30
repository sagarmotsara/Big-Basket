import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  
  void initState() { 
    super.initState();
    
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(context, PageTransition(child: LoginPage(), type: PageTransitionType.rightToLeft ))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(

         child: Column(children: [ 
           
          Padding(
            padding: const EdgeInsets.only(top:180.0),
            child: Center(child: RichText(
                  text: TextSpan(
                      text: 'B',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'i',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: 'G BA',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                            TextSpan(
                        text: 's',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                            TextSpan(
                        text: 'KET',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                            
                  ]))),),
          
           SizedBox(
              height: 200,
              width: 200,
              child: Lottie.asset('animations/loading.json')
           ),
           Padding(
             padding: const EdgeInsets.only(top:80.0),
             child: Text('Beta version 1.0', style: TextStyle(fontSize: 15, color: Colors.blueGrey),),
           )
         
         ])
       ),
       
    );
  }
}