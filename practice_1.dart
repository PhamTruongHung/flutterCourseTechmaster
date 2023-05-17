void main() {
  List<String> phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
  print('----------------------------\n');

  // viết code ở đây, đổi vị trí Xiaomi và iPhone

  phones = swapTwoElementByStringValue(phones, 'Xiaomi', 'iPhone');

  print('\n----------------------------');
  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}

List<String> swapTwoElementByStringValue(List<String> targetListString,
    String firstElementStringValue, String secondElementStringValue) {
  try {
    int firstElementIndex = targetListString.indexOf(firstElementStringValue);
    int secondElementIndex = targetListString.indexOf(secondElementStringValue);
    List<String> firstElement = targetListString
        .getRange(firstElementIndex, firstElementIndex + 1)
        .toList();
    List<String> secondElement = targetListString
        .getRange(secondElementIndex, secondElementIndex + 1)
        .toList();

    targetListString.removeAt(firstElementIndex);
    targetListString.insert(firstElementIndex, secondElement[0]);

    targetListString.removeAt(secondElementIndex);
    targetListString.insert(secondElementIndex, firstElement[0]);

    print('OK!!!');
  } catch (e) {
    print(e);
  }

  return targetListString;
}
