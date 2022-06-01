import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import '../../../../core/models/login_user.dart';

class LoginViewModel extends ChangeNotifier{

  LoginUser loginUserUser = LoginUser();
  // setter

  void changeName(String value){
    notifyListeners();
  }
  void changePassword(String value){
    notifyListeners();
  }

}
