
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import '../../../../core/models/login_user.dart';

class LoginViewModel extends ChangeNotifier{

   // LoginUser _name = LoginUser( null,null);
   // LoginUser _password = LoginUser( null,null);

   // setter

  String? nameValidation(String? value) {
    if (value!.isEmpty) {
      return 'Please Enter Your Name';
    }
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return 'Please Enter Your Password';
    }
  }


  // getter



}