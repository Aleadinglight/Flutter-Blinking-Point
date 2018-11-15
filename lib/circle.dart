import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class Circle extends CustomPainter {
  final Color color;
  final double pointSize;
  final double x_coor;
  final double y_coor;
  Circle({
    this.color,
    this.pointSize,
    this.x_coor,
    this.y_coor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Draw the mid point
    Paint line = new Paint();
    line.strokeCap = StrokeCap.round;
    line.color = color;
    line.strokeWidth = pointSize / 2;
    Offset center = new Offset(x_coor, y_coor / 2);
    double radius = pointSize;

    line.style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, line);

    line.style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius * 4, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
