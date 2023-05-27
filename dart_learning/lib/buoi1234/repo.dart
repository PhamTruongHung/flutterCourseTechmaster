import 'dart:io';

///Buoi 4 - Bai 1
timerPeriodic({required int second, required Function(int) callback}) {
  int count = 0;
  while (true) {
    sleep(Duration(seconds: second));
    callback(count);
    count = count + second;
  }
}

///Buoi 4 - Bai 2
textField(String text, {Function(String)? onChanged}) {
  if (onChanged != null) {
    final result = 'Hello $text';
    onChanged(result);
  }
}

String onChangedCallbackFunc(String text) {
  return text;
}

///Buoi 4 - Bai 3
void buttonCount(int number, {required Function() onPressed}) {
  onPressed();
}

///Buoi 4 - Bai 4
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

///swapTwoElement using index number
List<T> swapTwoElement<T>(
    List<T> targetList, int firstIndex, int secondIndex) {
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
  T temp = targetList[firstIndex];
  targetList[firstIndex] = targetList[secondIndex];
  targetList[secondIndex] = temp;

  return targetList;
}
