import 'package:flutter/material.dart';
import 'package:blinking_point/circle.dart';
import 'package:flutter/animation.dart';

final color = [
  new PointModel(
    Colors.red,
  ),
];

class BlinkingPoint extends StatefulWidget {
  final double xCoor;
  final double yCoor;
  final Color pointColor;
  final double pointSize;

  BlinkingPoint({
    this.xCoor,
    this.yCoor,
    this.pointColor,
    this.pointSize,
  });

  @override
  _BlinkingPointState createState() => new _BlinkingPointState();
}

class _BlinkingPointState extends State<BlinkingPoint>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 500.0).animate(animationController);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: animation.value,
      width: animation.value,
      child:
          /*new CustomPaint(
          foregroundPainter: Circle(
            xCoor: widget.xCoor,
            yCoor: widget.yCoor,
            color: widget.pointColor,
            pointSize: widget.pointSize,
          ),
        ),*/
          FlutterLogo(),
    );
  }
}

class PointModel {
  final color;
  PointModel(
    this.color,
  );
}
