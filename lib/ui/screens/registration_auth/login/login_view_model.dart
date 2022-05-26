
import 'package:flutter/cupertino.dart';

class LoginViewModel extends ChangeNotifier{

   // LoginUser _name = LoginUser( null,null);
   // LoginUser _password = LoginUser( null,null);

   // setter

  String? fullNameValidation(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Name';
    }
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Password';
    }
  }
}