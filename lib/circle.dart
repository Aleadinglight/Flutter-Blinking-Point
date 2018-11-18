import 'package:flutter/material.dart';
import 'dart:ui';

class Circle extends CustomPainter {
  final Color color;
  final double pointSize;
  final double xCoor;
  final double yCoor;
  final double blinkRadius;

  Circle({
    this.color,
    this.pointSize,
    this.xCoor,
    this.yCoor,
    this.blinkRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Draw the mid point
    Paint line = new Paint();
    line.strokeCap = StrokeCap.round;
    line.color = color;
    line.strokeWidth = pointSize / 2;
    Offset center = new Offset(xCoor, yCoor / 2);
    double pointRadius = pointSize / 2;

    line.style = PaintingStyle.fill;
    canvas.drawCircle(center, pointRadius, line);

    line.style = PaintingStyle.stroke;
    canvas.drawCircle(center, blinkRadius, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
