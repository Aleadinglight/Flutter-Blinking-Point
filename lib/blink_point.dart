import 'package:flutter/material.dart';
import 'package:blinking_point/circle.dart';

final color = [
  new PointModel(
    Colors.red,
  ),
];

class BlinkingPoint extends StatelessWidget {
  final PointModel viewModel;

  BlinkingPoint({
    this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Container(
        height: 100.0,
        width: 100.0,
        child: new CustomPaint(
          foregroundPainter: Circle(
            color: Colors.amber,
            pointSize: 10.0,
          ),
        ),
      ),
    );
  }
}

class PointModel {
  final color;
  PointModel(
    this.color,
  );
}
