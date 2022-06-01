import 'package:flutter/cupertino.dart';
import '../../../../core/models/sign_up_user.dart';
//khan
class SignUpViewModel extends ChangeNotifier{

  void changeName(String value){
    notifyListeners();
  }
  void changeEmail(String value){
    notifyListeners();
  }
  void changePassword(String value){
    notifyListeners();
  }
  void changeConfirmPassword(String value){
    notifyListeners();
  }

  String? fullNameValidator(val){
    RegExp regex = RegExp(r'^.{3,}$');
    if(val==null || val==""){
      return "full name error";
    }
    if (!regex.hasMatch(val)) {
      return ("Enter Valid name(Min. 3 Character)");
    }
    else{
      return null;
    }
  }
  String? emailValidation(val){
    if(val==null || val==""){
      return "email error";
    }if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(val)) {
      return ("Please Enter a valid email");
    }
    else{
      return null;
    }
  }
  String? passwordValidation(val){
    RegExp regex = RegExp(r'^.{6,}$');
    if(val==null || val==""){
      return "Password is required for login";
    }
    if (!regex.hasMatch(val)) {
      return ("Enter Valid Password(Min. 6 Character)");
    }
    else{
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