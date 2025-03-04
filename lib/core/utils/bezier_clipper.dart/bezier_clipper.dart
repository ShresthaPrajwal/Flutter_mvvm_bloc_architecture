import 'package:flutter/material.dart';

class BezierClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.15;

    Path path = Path();

    path.lineTo(0, height - heightOffset);
    path.quadraticBezierTo(width * 0.5, height, width, height - heightOffset);

    path.lineTo(width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
