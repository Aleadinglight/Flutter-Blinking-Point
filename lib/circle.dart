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
    Paint line = new Paint();
    line.color = color;
    Offset center = new Offset(size.width / 2, size.height / 2);
    double radius = pointSize;
    canvas.drawCircle(center, radius, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
