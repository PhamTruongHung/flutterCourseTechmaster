// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_learning/models/respone_object.dart';
import 'package:flutter_learning/screen/user_infor.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Future<http.Response> fetchData() {
      return http.get(Uri.parse('http://api.quynhtao.com/api/issues?limit=50'));
    }

    fetchData().then((value) {
      var jsonDataList = jsonDecode(value.body.toString());
      ResponeObject responeObject = ResponeObject.fromMap(jsonDataList);
      debugPrint(responeObject.toString());
    });

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UserInforScreen(title: 'Thong tin ca nhan'),
    );
  }
}
