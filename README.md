# Blinking point

Easy way to create a blinking point for your Flutter project.

## Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  blinking_point: ^1.0.0+2
```

## Usage

Import the file.

```dart
import 'package:blinking_point/blinking_point.dart';
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

## Demo

![Demo](../master/blinking.gif)