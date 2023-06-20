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
  List<MemoryCardObject> dogs = [
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/3687770/pexels-photo-3687770.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.dog,
        isShow: false),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/3361739/pexels-photo-3361739.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.dog,
        isShow: false),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/3433366/pexels-photo-3433366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.dog,
        isShow: false),
  ];
  List<MemoryCardObject> chickens = [
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/5145/animal-easter-chick-chicken.jpg?auto=compress&cs=tinysrgb&w=1200',
        animalType: AnimalType.chicken,
        isShow: false),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.chicken,
        isShow: false),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.chicken,
        isShow: false),
  ];
  List<MemoryCardObject> cats = [
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.cat,
        isShow: false),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/1643457/pexels-photo-1643457.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.cat,
        isShow: false),
    MemoryCardObject(
        imageUrl:
            'https://images.pexels.com/photos/1828875/pexels-photo-1828875.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        animalType: AnimalType.cat,
        isShow: false),
  ];

  List<String> animalUrls = [];
  List<MemoryCardObject> memoryCardObject = [];

  int previousMemoryObjectIndex = -1;
  int currentMemoryObjectIndex = -1;
  @override
  void initState() {
    memoryCardObject.clear();
    memoryCardObject.addAll(pickRandomItems(dogs, 2));
    memoryCardObject.addAll(pickRandomItems(chickens, 2));
    memoryCardObject.addAll(pickRandomItems(cats, 2));
    memoryCardObject.shuffle(Random());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: memoryCardObject.length,
        itemBuilder: (BuildContext context, int index) {
          return MemoryCardItem(
            index: index,
            memoryCardObject: memoryCardObject[index],
            getTappedIndex: (tappedIndex) async {
              setState(() {
                previousMemoryObjectIndex = currentMemoryObjectIndex;
                currentMemoryObjectIndex = tappedIndex;
              });

              // debugPrint('Start delay!');
              // await Future.delayed(const Duration(milliseconds: 300));
              // debugPrint('Stop delay!');
              // setState(() {
              //   // memoryCardObject[tappedIndex].isShow = false;
              // });
              if (currentMemoryObjectIndex != -1 &&
                  previousMemoryObjectIndex != -1 &&
                  currentMemoryObjectIndex != previousMemoryObjectIndex) {
                debugPrint(
                    '${memoryCardObject[previousMemoryObjectIndex].animalType}');
                debugPrint(
                    '${memoryCardObject[currentMemoryObjectIndex].animalType}');
                if (memoryCardObject[currentMemoryObjectIndex].animalType ==
                    memoryCardObject[previousMemoryObjectIndex].animalType) {
                  debugPrint('Same check!!!');
                  setState(() {
                    memoryCardObject[previousMemoryObjectIndex].isShow = true;
                    memoryCardObject[currentMemoryObjectIndex].isShow = true;
                    memoryCardObject[previousMemoryObjectIndex].isCheck = true;
                    memoryCardObject[currentMemoryObjectIndex].isCheck = true;
                  });
                } else {
                  setState(() {
                    if (!memoryCardObject[previousMemoryObjectIndex].isCheck) {
                      memoryCardObject[previousMemoryObjectIndex].isShow =
                          false;
                    }
                    if (!memoryCardObject[currentMemoryObjectIndex].isCheck) {
                      memoryCardObject[currentMemoryObjectIndex].isShow = true;
                      Future.delayed(const Duration(milliseconds: 1000), () {
                        debugPrint(
                            'Future.delayed(const Duration(milliseconds: 1000)');
                        setState(() {
                          memoryCardObject[currentMemoryObjectIndex].isShow =
                              false;
                        });
                      });
                    }
                  });
                }
              } else {
                debugPrint('Do not thing!!!');
                setState(() {
                  memoryCardObject[tappedIndex].isShow = true;
                });
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.refresh,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            for (var element in memoryCardObject) {
              element.isShow = false;
              element.isCheck = false;
            }
            memoryCardObject.shuffle(Random());
          });
        },
      ),
    );
  }
}

class MemoryCardItem extends StatefulWidget {
  const MemoryCardItem(
      {super.key,
      required this.memoryCardObject,
      required this.getTappedIndex,
      required this.index});

  final MemoryCardObject memoryCardObject;
  final Function(int) getTappedIndex;
  final int index;

  @override
  State<MemoryCardItem> createState() => _MemoryCardItemState();
}

class _MemoryCardItemState extends State<MemoryCardItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        focusColor: Colors.white,
        hoverColor: Colors.white,
        splashColor: Colors.white,
        highlightColor: Colors.white,
        onTap: () {
          debugPrint('Tapped index: ${widget.index}');
          debugPrint('-----------------------');
          widget.getTappedIndex(widget.index);
          setState(() {
            // widget.memoryCardObject.isCheck
            //     ? null
            //     : widget.memoryCardObject.isShow = true;
          });
        },
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
      ),
    );
  }
}

class MemoryCardObject {
  String imageUrl;
  AnimalType animalType;
  bool isShow;
  bool isCheck;
  MemoryCardObject({
    required this.imageUrl,
    required this.animalType,
    required this.isShow,
    this.isCheck = false,
  });

  @override
  String toString() {
    return 'MemoryCardObject(imageUrl: $imageUrl, animalType: $animalType, isShow: $isShow, isCheck: $isCheck)';
  }
}

List<T> pickRandomItems<T>(List<T> items, int count) {
  List<T> randomItems = [];
  Random random = Random();

  for (int i = 0; i < count; i++) {
    int randomIndex = random.nextInt(items.length);
    randomItems.add(items[randomIndex]);
    items.removeAt(randomIndex);
  }

  return randomItems;
}

enum AnimalType { dog, chicken, cat }
