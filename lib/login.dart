import 'package:flutter/material.dart';
import 'package:grocery/signup_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:grocery/Homepage.dart';
import 'signup_page.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fomrkey = GlobalKey<FormState>();
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    
      body: Container(
        height: 900.0,
        width: 500,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black87, BlendMode.darken),
              image: AssetImage('images/loginpage.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 150),
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
          SizedBox(
              child: Form(
            key: _fomrkey,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 30, right: 30),
                  child: TextFormField(
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
                    onPressed: () => Navigator.pushReplacement(context, PageTransition(child: HomePage(), type: PageTransitionType.leftToRight)),
                    color: Colors.cyan,
                    child: Text(
                      'Login',
                      style:
                          TextStyle(color: Colors.black87, fontFamily: 'Antra'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New?  SignUp for a free account',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      MaterialButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, PageTransition(child: sighup_page(), type: PageTransitionType.rightToLeft));
                          },
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w800,
                                fontSize: 15),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
