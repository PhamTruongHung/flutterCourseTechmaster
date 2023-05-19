import 'dart:math';

import 'repo.dart';

void main() {
  //Buoi 4 - Bai 1

  print('\n-------------------Buoi 4 - Bai 1-----------------------');

  timerPeriodic(second: 1, callback: sleepFunc);

  // Buoi 4 - Bai 2
  print('\n-------------------Buoi 4 - Bai 2-----------------------');
  String sampleTextInput = "sampleTextInput";
  textField(sampleTextInput, onChanged: (value) {
    print(value);
  });

  // Buoi 4 - Bai 3
  print('\n-------------------Buoi 4 - Bai 3-----------------------');

  int number = 0;
  print('Number: $number');
  buttonCount(
    number,
    onPressed: () {
      number++;
    },
  );
  print('Number: $number');

  // Buoi 4 - Bai 4.
  print('\n-------------------Buoi 4 - Bai 4-----------------------');
  List<int> randomNumbers = List.generate(30, (index) {
    final random = Random();
    return random.nextInt(100);
  });

  print('Original numbers           : $randomNumbers');
  try {
    print(
        'Sorted numbers (ascending) : ${sortListInt(targetList: randomNumbers, ascending: true)}');
    print(
        'Sorted numbers (descending): ${sortListInt(targetList: randomNumbers, ascending: false)}');
  } catch (e) {
    print(e);
  }
}
