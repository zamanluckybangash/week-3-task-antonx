
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';
import '../../../../core/models/login_user.dart';

class LoginViewModel extends ChangeNotifier{

   LoginUser _name = LoginUser( null, null,);
   LoginUser _password = LoginUser( null,  null,);

   // setter
  void changeName(String value) {
    if(value.length >=5){
      _name =  LoginUser( value,  null);
    }
    else{
      print("name error");
       _name =LoginUser(  null, "name must be greater than 5");
    }
    notifyListeners();
  }
  void changePassword(String value){
    if(value.length >=5){
      _password =LoginUser(  value, null,);
    }
    else{
      print("password error");
      _password =LoginUser(  null, "password must be greater than 5");
    }
    notifyListeners();
  }

  // getter
  LoginUser get getName =>_name;
  LoginUser get getPassword => _password;

  bool get isValid{
    if(_name.name !=null && _password.name !=null ){
      print("If true");
      return true;
    }
    else{
      print("If false");
      return false;
    }
  }


}