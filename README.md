# Blinking point

Easy way to create a blinking point for your project.

## Demo

<img src="demo.gif" width="100" />

## Installation

For now just download blinking_point.dart and circle.dart to your `/lib`. I will try to add it to the flutter library as soon as I could.

## Usage

Import the file.

```dart
import 'package:your_directory/blinking_point.dart';
```

Calling the point: 

```dart
new BlinkingPoint(
    xCoor: 100.0, // The x coordinate of the point
    yCoor: 500.0, // The y coordinate of the point
    pointColor: Colors.red, // The color of the point
    pointSize: 10.0, // The size of the point
);
```