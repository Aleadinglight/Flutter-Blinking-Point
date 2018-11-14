import 'package:flutter/material.dart';

final modelColor = [
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
      home: new Scaffold(
        backgroundColor: viewModel.color,
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
