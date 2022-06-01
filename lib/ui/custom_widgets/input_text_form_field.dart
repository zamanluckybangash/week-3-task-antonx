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
  final String? Function(String?)? validation;
  final TextEditingController? controller;
 // final String? errorText;

  InputTextFormField({required this.hintText,  this.isPasswordActive=false, required this.icon,
                       required this.iconColor,this.onChanged,this.validation,this.controller});

  @override
  Widget build(BuildContext context) {
    return  Consumer<LoginViewModel>(builder: (context, model, child){
      return TextFormField(
        validator: validation,
        obscureText: isPasswordActive,
        onChanged: onChanged,
        controller: controller ?? TextEditingController(),
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
