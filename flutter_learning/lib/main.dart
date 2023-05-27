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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber[50],
        child: const Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: ColorWidget(
                widgetName: '1',
                widgetColor: Colors.red,
                widgetSize: Size(300, 200),
              ),
            ),
            ColorWidget(
              widgetName: '2',
              widgetColor: Colors.orange,
              widgetSize: Size(150, 220),
            ),
            ColorWidget(
              widgetName: '3',
              widgetColor: Colors.blue,
              widgetSize: Size(120, 220),
            ),
            ColorWidget(
              widgetName: '4',
              widgetColor: Colors.yellow,
              widgetSize: Size(600, 150),
            ),
            ColorWidget(
              widgetName: '5',
              widgetColor: Colors.green,
              widgetSize: Size(200, 200),
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
