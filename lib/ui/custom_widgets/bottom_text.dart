import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  final text;
  final textColo;
  final buttonName;
  final buttonTextColo;
  final onPressed;

  BottomText({required this.text, required this.textColo, required this.buttonName,
    required this.buttonTextColo, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Text(text,
          style: TextStyle(
              color: textColo,
              fontWeight: FontWeight.w600
          ),
        ),
        TextButton(
            style: const ButtonStyle(
            ),
            onPressed: onPressed,
            child:  Text(buttonName,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: buttonTextColo,
                  fontWeight: FontWeight.w600
              ),
            )
        )
      ],
    );
  }
}
