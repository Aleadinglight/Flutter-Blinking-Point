import 'package:flutter/material.dart';
import 'package:blinking_point/blinking_point.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Blinking Point',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'BlinkingPoint'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: [
        new BlinkingPoint(
          xCoor: 100.0,
          yCoor: 500.0,
          pointColor: Colors.red,
          pointSize: 10.0,
        ),
        new BlinkingPoint(
          xCoor: 100.0,
          yCoor: 700.0,
          pointColor: Colors.yellow,
          pointSize: 10.0,
        ),
        new BlinkingPoint(
          xCoor: 100.0,
          yCoor: 900.0,
          pointColor: Colors.blue,
          pointSize: 10.0,
        ),
      ],
    );

    // return new LmaoApp(
    //   xCoor: 100.0,
    //   yCoor: 600.0,
    //   pointColor: Colors.red,
    //   pointSize: 20.0,
    // );
  }
}
