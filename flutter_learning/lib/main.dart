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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 900,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              alignment: Alignment.center,
              child: const CoVietNamXua(),
            ),
            Container(
              width: 900,
              height: 300,
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              alignment: Alignment.center,
              child: const CoThuyDien(),
            ),
          ],
        ),
      ),
    );
  }
}

class CoVietNamXua extends StatelessWidget {
  const CoVietNamXua({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ColorWidget(
          widgetName: '',
          widgetColor: Colors.red,
          widgetSize: Size(300, 200),
        ),
        Positioned(
          // bottom: 0,
          child: ColorWidget(
            widgetName: '',
            widgetColor: Colors.blue,
            widgetSize: Size(300, 100),
          ),
        ),
        Positioned(
          top: 50,
          left: 100,
          child: Icon(
            Icons.star_rate,
            size: 100,
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}

class CoThuyDien extends StatelessWidget {
  const CoThuyDien({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ColorWidget(
          widgetName: '',
          widgetColor: Colors.lightBlue[900]!,
          widgetSize: const Size(300, 200),
        ),
        Positioned(
          left: 100,
          child: ColorWidget(
            widgetName: '',
            widgetColor: Colors.yellow[600]!,
            widgetSize: const Size(30, 200),
          ),
        ),
        Positioned(
          top: 85,
          child: ColorWidget(
            widgetName: '',
            widgetColor: Colors.yellow[600]!,
            widgetSize: const Size(300, 30),
          ),
        ),
      ],
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
      // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      color: widgetColor,
      width: widgetSize.width,
      height: widgetSize.height,
      child: Text(widgetName),
    );
  }
}
