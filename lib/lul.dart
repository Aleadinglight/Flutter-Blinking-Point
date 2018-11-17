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
  Animation animation;
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
  Widget build(BuildContext context) {
    return LogoAnimation(
      animation: animation,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

class LogoAnimation extends AnimatedWidget {
  LogoAnimation({Key key, Animation animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation animation = listenable;
    print(animation.value);
    return new CustomPaint(
      foregroundPainter: Circle(
        xCoor: 200.0,
        yCoor: 500.0,
        color: Colors.red,
        pointSize: animation.value,
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
