import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width1of3 = MediaQuery.of(context).size.width / 3;
    double height1of3 = MediaQuery.of(context).size.height / 3;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber[50],
        child: Stack(
          alignment: Alignment.center,
          children: [
            for (var i = 1; i <= 4; i++)
              Positioned(
                left: i % 2 == 1 ? 0 : null,
                top: i <= 2 ? 0 : null,
                right: i % 2 == 0 ? 0 : null,
                bottom: i > 2 ? 0 : null,
                child: ColorWidget(
                  widgetName: '$i',
                  widgetColor: i == 1
                      ? Colors.red
                      : i == 2
                          ? Colors.orange
                          : i == 3
                              ? Colors.blue
                              : Colors.yellow,
                  widgetSize: i == 1
                      ? Size(2 * width1of3, height1of3)
                      : i == 2
                          ? Size(width1of3, 2 * height1of3)
                          : i == 3
                              ? Size(width1of3, 2 * height1of3)
                              : Size(2 * width1of3, height1of3),
                ),
              ),
            Positioned(
              child: ColorWidget(
                widgetName: '5',
                widgetColor: Colors.green,
                widgetSize: Size(width1of3, height1of3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorWidget extends StatelessWidget {
  const ColorWidget(
      {super.key,
      required this.widgetName,
      required this.widgetColor,
      required this.widgetSize,
      this.left,
      this.top,
      this.right,
      this.bottom});
  final String widgetName;
  final Color widgetColor;
  final Size widgetSize;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: widgetColor,
      width: widgetSize.width,
      height: widgetSize.height,
      child: Text(widgetName),
    );
  }
}
