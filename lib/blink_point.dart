import 'package:flutter/material.dart';
import 'package:blinking_point/circle.dart';
import 'package:flutter/animation.dart';

final color = [
  new PointModel(
    Colors.red,
  ),
];

class BlinkingPoint extends StatefulWidget {
  final Color pointColor;
  final double pointSize;

  BlinkingPoint({
    this.pointColor,
    this.pointSize,
  });

  @override
  _BlinkingPointState createState() => new _BlinkingPointState();
}

class _BlinkingPointState extends State<BlinkingPoint> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Container(
        height: 100.0,
        width: 100.0,
        child: new CustomPaint(
          foregroundPainter: Circle(
            color: widget.pointColor,
            pointSize: widget.pointSize,
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
