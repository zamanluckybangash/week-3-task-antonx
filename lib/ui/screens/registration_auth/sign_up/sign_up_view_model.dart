import 'package:flutter/cupertino.dart';
import '../../../../core/models/sign_up_user.dart';

class SignUpViewModel extends ChangeNotifier{
  SignUpUser _name = SignUpUser(null,null,null,null);
  SignUpUser _email = SignUpUser(null, null,null,null);
  SignUpUser _password = SignUpUser(null, null,null,null);
  SignUpUser _confirmPassword = SignUpUser(null, null,null,null);

  void changeName(String value){
    _name = SignUpUser(value, null,null,null);
    notifyListeners();
  }
  void changeEmail(String value){
    _email = SignUpUser(null, value,null,null);
    notifyListeners();
  }
  void changePassword(String value){
    _password = SignUpUser(null, null,value,null);
    notifyListeners();
  }
  void changeConfirmPassword(String value){
    _confirmPassword = SignUpUser(null, null,null,value);
    notifyListeners();
  }

  String? fullNameValidator(val){
    if(val==null || val==""){
      return "full name error";
    }else{
      return null;
    }
  }
  String? emailValidation(val){
    if(val==null || val==""){
      return "email error";
    }else{
      return null;
    }
  }
  String? passwordValidation(val){
    if(val==null || val==""){
      return "password error";
    }else{
      return null;
    }
  }
  String? conPasswordValidation(val){
    if(val==null || val==""){
      return "confirm password error";
    }else{
      return null;
    }
  }

}


//
// import 'package:flutter/cupertino.dart';
// import 'package:week_3_task_2_antonx/core/models/login_user.dart';
// import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';
//
// import '../../../../core/models/sign_up_user.dart';
//
// class SignUpViewModel extends ChangeNotifier{
//
//   String? fullNameValidation(String? value) {
//     if (value!.isEmpty) {
//       return 'Enter Your Name';
//     }
//   }
//
//   String? passwordValidation(String? value) {
//     if (value!.isEmpty) {
//       return 'Enter Your Password';
//     }
//   }
//
//   String? emailValidation(String? value) {
//     if (value!.isEmpty) {
//       return 'Enter Your Password';
//     }
//   }
//
//   String? confirmValidation(String? value) {
//     if (value!.isEmpty) {
//       return 'Enter Your Password';
//     }
//   }
// }