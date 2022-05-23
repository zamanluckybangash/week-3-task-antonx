
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import '../../../../core/models/login_user.dart';

class LoginViewModel extends ChangeNotifier{

   LoginUser _name = LoginUser( null);
   LoginUser _password = LoginUser( null);

   // setter

   void changeName(String value){
     _name=LoginUser(value);
     notifyListeners();
   }
   void changePassword(String value){
     _password=LoginUser(value);
     notifyListeners();
   }


  // getter
  LoginUser get getName =>_name;
  LoginUser get getPassword => _password;

}