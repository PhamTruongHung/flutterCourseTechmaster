// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

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
      home: const MemoryGame(),
    );
  }
}

class MemoryGame extends StatefulWidget {
  const MemoryGame({super.key});

  @override
  State<MemoryGame> createState() => _MemoryGameState();
}

class _MemoryGameState extends State<MemoryGame> {
  List<String> dogImageUrls = [
    'https://images.pexels.com/photos/3687770/pexels-photo-3687770.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/3361739/pexels-photo-3361739.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/3433366/pexels-photo-3433366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
  ];
  List<String> chickenImageUrls = [
    'https://images.pexels.com/photos/5145/animal-easter-chick-chicken.jpg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
  ];
  List<String> catImageUrls = [
    'https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1643457/pexels-photo-1643457.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1828875/pexels-photo-1828875.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
  ];

  List<String> animalUrls = [];

  @override
  Widget build(BuildContext context) {
    animalUrls.add(dogImageUrls[Random().nextInt(dogImageUrls.length)]);
    animalUrls.add(dogImageUrls[Random().nextInt(dogImageUrls.length)]);
    animalUrls.add(chickenImageUrls[Random().nextInt(chickenImageUrls.length)]);
    animalUrls.add(chickenImageUrls[Random().nextInt(chickenImageUrls.length)]);
    animalUrls.add(catImageUrls[Random().nextInt(catImageUrls.length)]);
    animalUrls.add(catImageUrls[Random().nextInt(catImageUrls.length)]);

    animalUrls.shuffle(Random());

    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: animalUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Expanded(
              child: Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(2),
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(animalUrls[index]),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MemoryCardObject {
  String imageUrl;
  AnimalType animalType;
  MemoryCardObject({
    required this.imageUrl,
    required this.animalType,
  });

  @override
  String toString() =>
      'MemoryCardObject(imageUrl: $imageUrl, animalType: $animalType)';
}

enum AnimalType { dog, chicken, cat }
