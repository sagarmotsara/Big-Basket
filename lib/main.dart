import 'package:flutter/material.dart';
import 'package:grocery/Auth.dart';
import 'package:grocery/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
   providers: [
     ChangeNotifierProvider.value(value: Authentication())
   ],

         child:
 MaterialApp(
      title: 'grockit app',
      home: SplashScreen(),
      ),
    );
  }
}