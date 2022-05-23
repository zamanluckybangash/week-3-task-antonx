
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';

import '../../../../core/models/sign_up_user.dart';

class SignUpViewModel extends ChangeNotifier{

  SignUpUser _name = SignUpUser(null,null);
  SignUpUser _email = SignUpUser(null, null);
  SignUpUser _password = SignUpUser(null, null);
  SignUpUser _confirmPassword = SignUpUser(null, null);

  // setter
void changeName(String value){
    _name = SignUpUser(value, null);
    notifyListeners();
}

void changeEmail(String value){
    _email = SignUpUser(value, null);
    notifyListeners();
}
  void changePassword(String value){
      _password = SignUpUser(value, null);
      notifyListeners();
  }
  void changeConfirmPassword(String value){
      _confirmPassword = SignUpUser(value, null);
      notifyListeners();
  }

  // getter
SignUpUser get getName => _name;
SignUpUser get getEmail => _email;
SignUpUser get getPassword => _password;
SignUpUser get getConfirmPassword => _confirmPassword;

}