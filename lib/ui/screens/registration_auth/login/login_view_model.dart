import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import '../../../../core/models/login_user.dart';

class LoginViewModel extends ChangeNotifier{

  LoginUser _name = LoginUser( name: null,password: null);
  LoginUser _password = LoginUser( name: null, password: null);

  // setter

  void changeName(String value){
    _name=LoginUser(name:value,password: null);
    notifyListeners();
  }
  void changePassword(String value){
    _password=LoginUser(name: null,password: value);
    notifyListeners();
  }

  String? fullNameValidator(val){
    RegExp regex = RegExp(r'^.{3,}$');
    if(val == null || val == ""){
      return "full name error";
    }
    if (!regex.hasMatch(val)) {
      return ("Enter Valid name(Min. 3 Character)");
    }
    else{
      return null;
    }
  }

  String? passwordNameValidator(val){
    RegExp regex = RegExp(r'^.{6,}$');
    if(val == null || val == ""){
      return "Password is required for login";
    }
    if (!regex.hasMatch(val)) {
      return ("Enter Valid Password(Min. 6 Character)");
    }
    else{
      return null;
    }
  }

}
