import 'dart:math';

void main() {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });
  print(numbers);

  int maxNumber = numbers[0];
  int minNumber = numbers[0];

  for (int number in numbers) {
    if (maxNumber < number) {
      maxNumber = number;
    }
    if (minNumber > number) {
      minNumber = number;
    }
  }

  print('minNumber: $minNumber');
  print('maxNumber: $maxNumber');

// code o day
}
