import 'package:flutter/material.dart';

class SignUpClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 4 * size.height / 4.9);
    Offset curvepoint = Offset(size.width / 2, size.height);
    Offset endpoint = Offset(size.width, 4 * size.height / 4.454);
    path.quadraticBezierTo(
        curvepoint.dx, curvepoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
