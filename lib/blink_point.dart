import 'package:flutter/material.dart';
import 'package:blinking_point/circle.dart';
import 'package:flutter/animation.dart';

final color = [
  new PointModel(
    Colors.red,
  ),
];

class BlinkingPoint extends StatefulWidget {
  final double x_coor;
  final double y_coor;
  final Color pointColor;
  final double pointSize;

  BlinkingPoint({
    this.x_coor,
    this.y_coor,
    this.pointColor,
    this.pointSize,
  });

  @override
  _BlinkingPointState createState() => new _BlinkingPointState();
}

class _BlinkingPointState extends State<BlinkingPoint> {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Container(
        height: 100.0,
        width: 100.0,
        child: new CustomPaint(
          foregroundPainter: Circle(
            x_coor: widget.x_coor,
            y_coor: widget.y_coor,
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
