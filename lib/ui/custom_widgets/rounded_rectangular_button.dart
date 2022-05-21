import 'package:flutter/material.dart';

import '../../core/constant/colors.dart';
import '../screens/home/home_screen.dart';

class RoundedRectangularButton extends StatelessWidget {

  final  text;
  // final textColor;
  final onPressed;
  final buttonColor;

  RoundedRectangularButton({required this.text,required this.onPressed, required this.buttonColor});


  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all((buttonColor)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),)),
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15))
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
