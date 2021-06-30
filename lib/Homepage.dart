import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: 
      Colors.black,
      title: 
         RichText(
                  text: TextSpan(
                      text: 'B',
                      style: TextStyle(
                          color: Colors.teal,
                       
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'i',
                        style: TextStyle(
                            color: Colors.amber,
                         
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: 'G BA',
                        style: TextStyle(
                            color: Colors.teal,
                         
                            fontWeight: FontWeight.bold)),
                            TextSpan(
                        text: 's',
                        style: TextStyle(
                            color: Colors.amber,
                         
                            fontWeight: FontWeight.bold)),
                            TextSpan(
                        text: 'KET',
                        style: TextStyle(
                            color: Colors.teal,
                         
                            fontWeight: FontWeight.bold)),
                            
                  ]))
      ),
    );
  }
}