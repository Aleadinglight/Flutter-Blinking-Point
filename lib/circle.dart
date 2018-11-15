import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class Circle extends CustomPainter {
  final Color color;
  final double pointSize;
  Circle({
    this.color,
    this.pointSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Draw the mid point
    Paint line = new Paint();
    line.strokeCap = StrokeCap.round;
    line.color = color;
    line.strokeWidth = 3.0;
    Offset center = new Offset(size.width / 2, size.height / 2);
    double radius = pointSize;

    line.style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, line);

    line.style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius * 3, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
