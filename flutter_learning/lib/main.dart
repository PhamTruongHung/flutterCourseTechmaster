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
        color: Colors.red,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: width1of3,
            )
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
