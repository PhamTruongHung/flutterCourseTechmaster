import 'dart:math';

void main() {
  // Generate a list of 10 random numbers.
  List<int> randomNumbers = List.generate(30, (index) {
    final random = Random();
    return random.nextInt(100);
  });

  // Print the list of random numbers.
  print('Original numbers           : $randomNumbers');

  // Try to swap the first two elements of the list.
  try {
    print('Sorted numbers (ascending) : ${sortListInt(targetList: randomNumbers, ascending: true)}');
    print('Sorted numbers (descending): ${sortListInt(targetList: randomNumbers, ascending: false)}');
  } catch (e) {
    print(e);
  }

  // Print the list of random numbers after the swap.
  // print('Swapped numbers : $randomNumbers');
}

///Sort list of int
List<int> sortListInt(
    {required List<int> targetList, required bool ascending}) {
  if (targetList.isEmpty) {
    throw (Exception("--------------------> Something wrong!!!"));
  }

  for (var maxLenght = targetList.length; maxLenght > 0; maxLenght--) {
    for (var j = 0; j < maxLenght - 1; j++) {
      if (ascending == true
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
