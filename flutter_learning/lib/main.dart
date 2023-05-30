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
    // double width1of3 = MediaQuery.of(context).size.width / 3;
    // double height1of3 = MediaQuery.of(context).size.height / 3;

    return Scaffold(
      body: Container(
        // margin: const EdgeInsets.all(30),
        width: double.infinity,
        color: Colors.grey,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorWidget(
              widgetName: '',
              widgetColor: Colors.white,
              widgetSize: Size(300, 200 / 3),
            ),
            ColorWidget(
              widgetName: '',
              widgetColor: Colors.blue,
              widgetSize: Size(300, 200 / 3),
            ),
            ColorWidget(
              widgetName: '',
              widgetColor: Colors.red,
              widgetSize: Size(300, 200 / 3),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorWidget extends StatelessWidget {
  const ColorWidget({
    super.key,
    required this.widgetName,
    required this.widgetColor,
    required this.widgetSize,
  });
  final String widgetName;
  final Color widgetColor;
  final Size widgetSize;
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
