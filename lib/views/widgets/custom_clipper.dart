import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 4 * size.height / 5);
    Offset curvepoint1 = Offset(size.width / 4, size.height);

    Offset centrepoint = Offset(size.width / 2, 4 * size.height / 90);
    path.quadraticBezierTo(
        curvepoint1.dx, curvepoint1.dy, centrepoint.dx, centrepoint.dy);
    Offset curvepoint2 = Offset(3 * size.width / 4, 3 * size.height / 5);
    Offset endpoint = Offset(size.width, 4 * size.height / 5);

    path.quadraticBezierTo(
        curvepoint2.dx, curvepoint2.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
