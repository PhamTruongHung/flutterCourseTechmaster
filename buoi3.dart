import 'dart:math';

void main() {
  // Generate a list of 10 random numbers.
  List<int> randomNumbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });

  // Print the list of random numbers.
  print('Original numbers: $randomNumbers');

  // Try to swap the first two elements of the list.
  try {
    // randomNumbers = swapTwoElement(randomNumbers, 0, 11);
    randomNumbers = sortListInt(targetList: randomNumbers, direction: true);
  } catch (e) {
    print(e);
  }

  // Print the list of random numbers after the swap.
  print('Swapped numbers : $randomNumbers');
}

///Sort list of int, true for increase direction, false for decrease direction
List<int> sortListInt(
    {required List<int> targetList, required bool direction}) {
  if (targetList.isEmpty) {
    throw (Exception("--------------------> Something wrong!!!"));
  }

  for (var maxLenght = targetList.length; maxLenght > 0; maxLenght--) {
    for (var j = 0; j < maxLenght - 1; j++) {
      if (direction == true
          ? targetList[j] > targetList[j + 1]
          : targetList[j] < targetList[j + 1]) {
        targetList = swapTwoElement(targetList, j, j + 1);
      }
      // print(targetList);
    }
  }

  return targetList;
}

List<int> swapTwoElement(
    List<int> targetList, int firstIndex, int secondIndex) {
  // Check that the indexes are valid.
  if (targetList.isEmpty ||
      firstIndex == secondIndex ||
      firstIndex > targetList.length - 1 ||
      secondIndex > targetList.length - 1 ||
      firstIndex < 0 ||
      secondIndex < 0) {
    throw (Exception("--------------------> Something wrong!!!"));
  }

  // Swap the elements at the specified indexes.
  int temp = targetList[firstIndex];
  targetList[firstIndex] = targetList[secondIndex];
  targetList[secondIndex] = temp;

  return targetList;
}