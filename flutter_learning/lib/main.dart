// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learning/models/avatar.dart';
import 'package:flutter_learning/models/text_field.dart';
import 'package:flutter_learning/models/user.dart';

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
  User user = User(name: 'name');

  TextEditingController nameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text(
          'Thong tin ca nhan',
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Log out action');
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Avatar(user: user),
              CustomTextField(controller: nameControler, lable: 'Ho va ten')
            ],
          ),
        ),
      ),
    );
  }
}
