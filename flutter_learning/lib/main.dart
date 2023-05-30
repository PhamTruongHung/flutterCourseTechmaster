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
    List<Color> colors = [Colors.blue[900]!, Colors.white, Colors.red[800]!];

    return Scaffold(
      body: Center(
        child: Container(
          width: 302,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < colors.length; i++)
                ColorWidget(
                  widgetName: '',
                  widgetColor: colors[i],
                  widgetSize: const Size(100, 200),
                )
            ],
          ),
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
      // alignment: Alignment.center,
      color: widgetColor,
      width: widgetSize.width,
      height: widgetSize.height,
      child: Text(widgetName),
    );
  }
}
