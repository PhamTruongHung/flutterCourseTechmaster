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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double chessBoardSize;
    if (screenWidth >= screenHeight) {
      chessBoardSize = screenHeight * 0.7;
    } else {
      chessBoardSize = screenHeight * 0.7;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chess',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey,
          alignment: Alignment.center,
          child: Container(
            height: chessBoardSize,
            width: chessBoardSize,
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
