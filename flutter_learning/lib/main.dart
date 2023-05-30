// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        child: Container(
          alignment: Alignment.center,
          child: const RowStar(
            rate: 3,
          ),
        ),
      ),
    );
  }
}

class RowStar extends StatelessWidget {
  final int rate;
  const RowStar({
    super.key,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    int rateTmp = rate;
    if (rate > 5) {
      rateTmp = 5;
    }
    if (rate < 0) {
      rateTmp = 0;
    }

    List<Widget> starRow = [];

    for (int i = 0; i < 5; i++) {
      starRow.add(RateStar(check: i > rateTmp - 1 ? false : true));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: starRow,
    );
  }
}

class RateStar extends StatelessWidget {
  final bool check;

  const RateStar({
    Key? key,
    required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: check ? Colors.yellow : Colors.grey,
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
      // alignment: Alignment.center,
      color: widgetColor,
      width: widgetSize.width,
      height: widgetSize.height,
      child: Text(widgetName),
    );
  }
}
