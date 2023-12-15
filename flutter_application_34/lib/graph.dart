import 'dart:developer';

import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LineState();
}

class _LineState extends State<Line> with SingleTickerProviderStateMixin {
  double _progress = 0.0;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    var controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    // First animation (left to right)
    animation = Tween(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {
          _progress = animation!.value;
          log(_progress.toString());
        });
      });

    // Second animation (right to left)
    animation!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        log("First animation completed");

        // Reverse animation (left to right)
        animation = Tween(begin: 0.0, end: 1.0).animate(controller)
          ..addListener(() {
            setState(() {
              _progress = animation!.value;
              log("Reverse animation");
              log(_progress.toString());
            });
          });
        controller.reset();
        controller.forward();
      }
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: CustomPaint(painter: LinePainter(_progress)),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  Paint? _paint;
  double _progress;

  LinePainter(this._progress) {
    _paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // Calculate the end point based on the progress
    double startX = size.width - size.width * _progress;

    // Draw a horizontal line from right to left if _progress is greater than 0.0
    if (_progress > 0.0) {
      canvas.drawLine(
        Offset(startX, 0.0),
        const Offset(0.0, 0.0),
        _paint!,
      );
    }
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return oldDelegate._progress != _progress;
  }
}
