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
    final statistic = [Keno('Chan', 5), Keno('Le', 2), Keno('Hoa CL', 3)];
    return Scaffold(
      body: Center(
        child: Container(
          width: 600,
          height: 300,
          padding: const EdgeInsets.all(20),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
          alignment: Alignment.center,
          child: Column(
            children: [
              KenoRow(keno: statistic[0]),
              KenoRow(keno: statistic[1]),
              KenoRow(keno: statistic[2]),
            ],
          ),
        ),
      ),
    );
  }
}

class KenoRow extends StatelessWidget {
  final Keno keno;
  const KenoRow({super.key, required this.keno});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(keno.text),
        Expanded(
          child: Container(
            height: 5,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
          ),
        ),
        Text('${keno.count} Lan'),
      ],
    );
  }
}

class Keno {
  final String text;
  final int count;

  Keno(this.text, this.count);
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
