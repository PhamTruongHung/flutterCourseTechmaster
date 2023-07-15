import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double dashSpace;

  DashedLinePainter({
    required this.color,
    required this.strokeWidth,
    required this.dashLength,
    required this.dashSpace,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final totalSegments = size.width / (dashLength + dashSpace);
    final segmentSpace = size.width / totalSegments;

    double startX = 0.0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashLength, 0),
        paint,
      );

      startX += segmentSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashed Line Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Custom Paint',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: CustomPaint(
          painter: DashedLinePainter(
            color: Colors.black,
            strokeWidth: 2.0,
            dashLength: 8.0,
            dashSpace: 4.0,
          ),
          // ignore: prefer_const_constructors
          child: SizedBox(
            width: double.infinity, // Set width to full screen width
            height: 2.0,
          ),
        ),
      ),
    );
  }
}
