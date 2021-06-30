
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Authentication with ChangeNotifier{
  String uid;
   String get getuid => uid;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
   
  Future loginIntoAccount(String email, String password) async {

    UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
     email: email, password: password);
      User user = userCredential.user;

      uid = user.uid;
      print('This is out uid => $getuid');
      notifyListeners();
       }

       Future signInIntoAccount(String email, String password) async {

    UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
     email: email, password: password);
      User user = userCredential.user;

      uid = user.uid;
      print('This is out uid => $getuid');
      notifyListeners();
       }
}