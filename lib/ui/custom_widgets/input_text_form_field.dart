import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/constant/colors.dart';
import '../../core/view_models/base_view_model.dart';

class InputTextFormField extends StatelessWidget {
 // TextEditingController? userInputValue = TextEditingController();
  final String hintText;
  final bool isPasswordActive ;
  final IconData icon;
  final Color iconColor;
  final Function(String)? onChanged;
  final String? errorText;

  InputTextFormField({required this.hintText,  this.isPasswordActive=false, required this.icon,
                       required this.iconColor,this.onChanged, this.errorText});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        obscureText: isPasswordActive,
        onChanged: onChanged,

        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: iconColor,
              size: 18,
            ),
            hintText: hintText,
            errorText: errorText,
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
}
