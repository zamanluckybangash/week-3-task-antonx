import 'package:flutter/cupertino.dart';
import '../../../../core/models/sign_up_user.dart';
import '../../../../core/services/auth_services.dart';
//khan
class SignUpViewModel extends ChangeNotifier{

  SignUpUser signUpUser = SignUpUser();
  final _authService = AuthService();

  signUPWithEmailPassword(context) async{
    debugPrint("Bangash");
    signUpUser= await _authService.signUp(signUpUser, context);
  }


}