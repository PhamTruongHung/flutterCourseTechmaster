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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Container(
            height: 500,
            width: 500,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            color: Colors.grey,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
              ),
              itemCount: 64,
              itemBuilder: (BuildContext context, int cellIndex) {
                return chessCell(cellIndex);
              },
            ),
          ),
        ),
      ),
    );
  }
}

Widget chessCell(int cellIndex) {
  int row = cellIndex ~/ 8;
  int column = cellIndex % 8;

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
      color: (row + column) % 2 == 0 ? Colors.black : Colors.white,
    ),
  );
}
