

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../ui/screens/home/home_screen.dart';


class AuthService {
  //final _dbService = DatabaseService();

  final _auth = FirebaseAuth.instance;

  User? user;

  // AuthService(){
  //   signIn(email, password, context);
  // }

  // login function
  signIn(String? email, String? password,context) async {
      try {
        await _auth.signInWithEmailAndPassword(email: email!, password: password!).then((uid) {
          Fluttertoast.showToast(msg: "Login Successful");
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return HomeScreen();
          }));
        }
        );
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
  }
}