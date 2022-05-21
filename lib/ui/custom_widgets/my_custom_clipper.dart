import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height-40);

    var firstControlPoint = Offset(size.width/6, size.height);
    var firstEndPoint = Offset(size.width-0.07, size.height-60.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    // var secondControlPoint = Offset(size.width-(size.width/3.25), size.height-65);
    // var secondEndPoint = Offset(size.width,size.height-40);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    // path.lineTo(size.width, size.height*3);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}