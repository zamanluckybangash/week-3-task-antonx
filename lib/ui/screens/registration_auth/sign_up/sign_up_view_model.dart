
import 'package:flutter/cupertino.dart';
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';

import '../../../../core/models/sign_up_user.dart';

class SignUpViewModel extends ChangeNotifier{

  String? fullNameValidation(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Name';
    }
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Password';
    }
  }

  String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Password';
    }
  }

  String? confirmValidation(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Password';
    }
  }
}