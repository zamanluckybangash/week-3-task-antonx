import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_task_2_antonx/ui/screens/registration_auth/login/login_view_model.dart';
import '../../core/constant/colors.dart';

class InputTextFormField extends StatelessWidget {
 // TextEditingController? userInputValue = TextEditingController();
  final String hintText;
  final bool isPasswordActive ;
  final IconData icon;
  final Color iconColor;
  final Function(String)? onChanged;
 // final String? errorText;

  InputTextFormField({required this.hintText,  this.isPasswordActive=false, required this.icon,
                       required this.iconColor,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return  Consumer<LoginViewModel>(builder: (context, model, child){
      return TextFormField(
        validator: (String? value){
          if(model.getName.name==null || model.getName.name!.isEmpty
          || model.getPassword.password==null || model.getPassword.password!.isEmpty
          )
          {
            return 'please enter value';
          }
          else{
            return null;
          }
        },
        obscureText: isPasswordActive,
        onChanged: onChanged,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: iconColor,
              size: 18,
            ),
            hintText: hintText,
            hintStyle:  TextStyle(
                color: iconColor,
                fontWeight: FontWeight.w400,
                fontSize: 15.0
            ),
            fillColor: fieldBackgroundColor,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10)
        ),
      );
    }
    );
  }
}
