import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery/Auth.dart';
import 'package:grocery/login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class sighup_page extends StatefulWidget {
  sighup_page({Key key}) : super(key: key);

  @override
  _sighup_pageState createState() => _sighup_pageState();
}

class _sighup_pageState extends State<sighup_page> {
  bool loading = false;
  String email = '';
  String password = '';
  String error = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _fomrkey = GlobalKey<FormState>();
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900.0,
        width: 500.0,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black87, BlendMode.darken),
              image: AssetImage('images/loginpage.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
             
              children: [
                Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Row(
          children: [
            IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.arrow_back_sharp,
              ),
              onPressed: () {
                Navigator.pushReplacement(
          context,
          PageTransition(
              child: LoginPage(),
              type: PageTransitionType.leftToRight));
              },
            )
          ],
        ),
                ),
              Padding(
        padding: const EdgeInsets.only(top: 70),
        child: RichText(
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
            
            ]))),
              Flexible(
                child: SizedBox(
            child: Form(
          key: _fomrkey,
          child: SingleChildScrollView(
                      child: Column(
              children: [
                Padding(
                  padding:
        const EdgeInsets.only(top: 50.0, left: 30, right: 30),
                  child: TextFormField(
                    validator: (val) => val.isEmpty ? 'Enter email' : null,
                    onChanged: (val){
                      setState(() {
                        email = val;
                      });
                    },
                    controller: emailController,
                  style: TextStyle(fontFamily: 'Comic', color: Colors.white),
                  decoration: InputDecoration(
            hintText: 'Enter email',
            hoverColor: Colors.yellow,
            hintStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'Comic',
                fontSize: 20)),
                  ),
                ),
                Padding(
                  padding:
        const EdgeInsets.only(top: 50.0, left: 30, right: 30),
                  child: TextFormField(
                    validator: (val) => val.length <8 ?'Enter pasword >8 digit' : null,
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                    controller: passwordController,
                  style: TextStyle(fontFamily: 'Comic', color: Colors.white),
                  obscureText: isvisible ? true : false,
                  decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                if (isvisible == true) {
                  setState(() {
        isvisible = false;
                  });
                } else {
                  setState(() {
        isvisible = true;
                  });
                }
              },
              icon: Icon(Icons.remove_red_eye),
            ),
            hintText: 'Enter password',
            hoverColor: Colors.yellow,
            hintStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'Comic',
                fontSize: 20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: MaterialButton(
                  onPressed: ()=> Provider.of<Authentication>(context, listen: false).signInIntoAccount(emailController.text, passwordController.text),
                  color: Colors.cyan,
                  child: Text(
        'SignUp',
        style:
              TextStyle(color: Colors.black87, fontFamily: 'Antra'),
                  ),
                  ),
                ),

        ],
              ),
          ),
      )
      
      ),
              )
              ]
            )
        )
    );
  }
}
