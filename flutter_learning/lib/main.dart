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
    List<Keno> statistic = [Keno('Chan', 5), Keno('Le', 2), Keno('Hoa CL', 3)];
    statistic.sort();
    int kenoCountMax = findMaxCount(statistic).count;

    List<Widget> kenoTable = [];
    for (var keno in statistic) {
      kenoTable.add(KenoRow(keno: keno, kenoCountMax: kenoCountMax));
    }
    return Scaffold(
      body: Center(
        child: Container(
          width: 900,
          height: 300,
          padding: const EdgeInsets.all(20),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
          alignment: Alignment.center,
          child: Column(
            children: kenoTable,
          ),
        ),
      ),
    );
  }
}

Keno findMaxCount(List<Keno> kenos) {
  if (kenos.isEmpty) {
    throw Exception('List is empty');
  }

  Keno maxKeno = kenos[0]; // Assume the first element has the maximum count

  for (var i = 1; i < kenos.length; i++) {
    if (kenos[i].count > maxKeno.count) {
      maxKeno = kenos[i];
    }
  }

  return maxKeno;
}

class KenoRow extends StatelessWidget {
  final Keno keno;
  final int kenoCountMax;
  const KenoRow({super.key, required this.keno, required this.kenoCountMax});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(keno.text),
                      ),
                    ),
                    Expanded(
                        flex: 6,
                        child: Row(
                          children: [
                            Expanded(
                              flex: keno.count,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: 5,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: kenoCountMax - keno.count,
                              child: const SizedBox(),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text('${keno.count} Lan'),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class Keno implements Comparable<Keno> {
  final String text;
  final int count;

  Keno(this.text, this.count);

  @override
  int compareTo(Keno other) {
    if (count > other.count) {
      return -1;
    } else if (count < other.count) {
      return 1;
    } else {
      return text.compareTo(other.text);
    }
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
