import 'package:flutter/material.dart';
import 'package:social/views/constants/color_constants.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = yellow;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;

    var startPoint = Offset(1, size.height / 1);
    var controlPoint1 = Offset(size.width / 4, size.height * 0.1);
    var controlPoint2 = Offset(3 * size.width / 4, size.height * -.3);
    var endPoint = Offset(size.width, size.height * 2.1);

    var path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);

    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
