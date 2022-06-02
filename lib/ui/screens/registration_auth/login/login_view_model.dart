

import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import '../../../../core/models/login_user.dart';
import '../../../../core/services/auth_services.dart';

class LoginViewModel extends ChangeNotifier{

  LoginUser loginUser = LoginUser();
  final _authService = AuthService();

  loginWithEmailPassword(context) async {
    loginUser = await _authService.signIn(
        loginUser.email,
        loginUser.password,
        context
    );
  }
}
