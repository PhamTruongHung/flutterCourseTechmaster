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

  List<MemoryCardObject> dogs = [
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/3687770/pexels-photo-3687770.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.dog,
        isShow: true),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/3361739/pexels-photo-3361739.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.dog,
        isShow: true),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/3433366/pexels-photo-3433366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.dog,
        isShow: true),
  ];
  List<MemoryCardObject> chickens = [
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/5145/animal-easter-chick-chicken.jpg?auto=compress&cs=tinysrgb&w=1200',
        animalType: AnimalType.chicken,
        isShow: true),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.chicken,
        isShow: true),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.chicken,
        isShow: true),
  ];
  List<MemoryCardObject> cats = [
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.cat,
        isShow: true),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/1643457/pexels-photo-1643457.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.cat,
        isShow: true),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/1828875/pexels-photo-1828875.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.cat,
        isShow: true),
  ];

  List<String> animalUrls = [];
  List<MemoryCardObject> memoryCardObject = [];

  @override
  Widget build(BuildContext context) {
    memoryCardObject.add(dogs[Random().nextInt(dogImageUrls.length)]);
    memoryCardObject.add(dogs[Random().nextInt(dogImageUrls.length)]);
    memoryCardObject.add(chickens[Random().nextInt(chickenImageUrls.length)]);
    memoryCardObject.add(chickens[Random().nextInt(chickenImageUrls.length)]);
    memoryCardObject.add(cats[Random().nextInt(catImageUrls.length)]);
    memoryCardObject.add(cats[Random().nextInt(catImageUrls.length)]);

    memoryCardObject.shuffle(Random());

    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: memoryCardObject.length,
        itemBuilder: (BuildContext context, int index) {
          return MemoryCardItem(
            memoryCardObject: memoryCardObject[index],
            isShow: false,
          );
        },
      ),
    );
  }
}

class MemoryCardItem extends StatefulWidget {
  const MemoryCardItem(
      {super.key, required this.memoryCardObject, required this.isShow});

  final MemoryCardObject memoryCardObject;
  final bool isShow;

  @override
  State<MemoryCardItem> createState() => _MemoryCardItemState();
}

class _MemoryCardItemState extends State<MemoryCardItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.all(2),
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
          image: widget.memoryCardObject.isShow
              ? DecorationImage(
                  image: NetworkImage(widget.memoryCardObject.imageUrl),
                  fit: BoxFit.cover)
              : null,
        ),
      ),
    );
  }
}

class MemoryCardObject {
  String imageUrl;
  AnimalType animalType;
  bool isShow;
  MemoryCardObject({
    required this.imageUrl,
    required this.animalType,
    required this.isShow,
  });

  @override
  String toString() =>
      'MemoryCardObject(imageUrl: $imageUrl, animalType: $animalType, isShow: $isShow)';
}

enum AnimalType { dog, chicken, cat }
