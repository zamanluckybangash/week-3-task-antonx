
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:week_3_task_2_antonx/core/models/sign_up_user.dart';

import '../../ui/screens/home/home_screen.dart';


class AuthService {

  final _auth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  //User? user;

  // login function
  signIn(String? email, String? password, context) async {
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
  signUp(SignUpUser signUpUser,context) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: signUpUser.email!, password: signUpUser.password!).then((auth) {
        User? user = _auth.currentUser;
        // signUpUser.email = user!.email;
        // signUpUser.id = user.uid;
        // signUpUser.name = signUpUser.name;
        // signUpUser.password = signUpUser.password;

        firebaseFirestore.collection("users").doc(user?.uid).set(signUpUser.toJson());
        Fluttertoast.showToast(msg: "Account created successfully :) ");
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return HomeScreen();
        }));
      }
      );
    }catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
  }
  // postDetailsToFirestore(SignUpUser user2) async{
  //   // calling our fire store
  //   // calling our user model
  //   // sending these values
  //
  //
  // }
}