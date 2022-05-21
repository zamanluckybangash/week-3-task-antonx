
import 'package:week_3_task_2_antonx/core/models/login_user.dart';
import 'package:week_3_task_2_antonx/core/view_models/base_view_model.dart';

import '../../../../core/models/sign_up_user.dart';

class SignUpViewModel extends BaseViewModel{

  SignUpUser _name = SignUpUser(null,null);
  SignUpUser _email = SignUpUser(null, null);
  SignUpUser _password = SignUpUser(null, null);
  SignUpUser _confirmPassword = SignUpUser(null, null);

  // setter
void changeName(String value){
  if(value.length >=5){
    _name = SignUpUser(value, null);
  }
  else{
    print("name error");
    _name= SignUpUser(null, 'Name must be greater than 5');
  }
  notifyListeners();
}

void changeEmail(String value){
  if(value.length >=5){
    _email = SignUpUser(value, null);
  }
  else{
    print("email error");
    _email = SignUpUser(null, 'Email must be greater tha 5');
  }
  notifyListeners();
}
  void changePassword(String value){
    if(value.length >=5){
      _password = SignUpUser(value, null);
    }
    else{
      print("password error");
      _password = SignUpUser(null, 'Password must be greater tha 5');
    }
    notifyListeners();
  }
  void changeConfirmPassword(String value){
    if(value.length >=5){
      _confirmPassword = SignUpUser(value, null);
    }
    else{
      print("confirm error");
      _confirmPassword = SignUpUser(null, 'ConfirmPassword must be greater tha 5');
    }
    notifyListeners();
  }

  // getter
SignUpUser get getName => _name;
SignUpUser get getEmail => _email;
SignUpUser get getPassword => _password;
SignUpUser get getConfirmPassword => _confirmPassword;

bool get isValid{
  if(_name.name !=null && _email.name !=null  && _password.name !=null && _confirmPassword.name !=null ){
    return true;
  }
  else{
    return false;
  }
}
}