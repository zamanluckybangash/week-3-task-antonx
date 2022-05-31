import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import '../../../../core/models/login_user.dart';

class LoginViewModel extends ChangeNotifier{

  LoginUser _name = LoginUser( null,null);
  LoginUser _password = LoginUser( null,null);

  // setter

  void changeName(String value){
    _name=LoginUser(value,null);
    notifyListeners();
  }
  void changePassword(String value){
    _password=LoginUser(null,value);
    notifyListeners();
  }


  // getter
  //LoginUser get getName =>_name;
  //LoginUser get getPassword => _password;

  String? fullNameValidator(val){
    if(val == null || val == ""){
      return "full name error";
    }else{
      return null;
    }
  }
  String? passwordNameValidator(val){
    if(val == null || val == ""){
      return "password error";
    }else{
      return null;
    }
  }

}
