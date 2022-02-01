import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ImageDrag(),
        ),
      ),
    );
  }
}

class ImageDrag extends StatefulWidget {
  @override
  _ImageDragState createState() => _ImageDragState();
}

class _ImageDragState extends State<ImageDrag> {
  double _x = 0;
  double _y = 0;

  double _x2 = 115;
  double _y2 = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: _y,
          left: _x,
          child: GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              setState(() {
                _x += details.delta.dx;
                _y += details.delta.dy;
              });
            },
            child: Column(
              children: [
                Image.asset("assets/ceiti1.png"),
              ],
            ),
          ),
        ),
        Positioned(
          top: _y2,
          left: _x2,
          child: GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              setState(() {
                _x2 += details.delta.dx;
                _y2 += details.delta.dy;
              });
            },
            child: Column(
              children: [
                Image.asset("assets/ceiti2.png"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
