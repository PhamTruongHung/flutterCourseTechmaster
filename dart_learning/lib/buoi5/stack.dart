class Stack {
  final int capacity;
  final List<String> list = <String>[];
  Stack({required this.capacity});
  bool isEmpty() {
    return list.isEmpty;
  }

  bool isFull() {
    return list.length == capacity;
  }

  void push(String value) {
    if (isFull()) {
      throw ('--> This stack was full when add this value: $value');
    }
    list.add(value);
  }

  String pop() {
    if (isEmpty()) {
      throw ('--> This stack was empty when trying to remove last item!!!');
    }
    String lastItem = list.last;
    list.remove(lastItem);
    return lastItem;
  }

  @override
  String toString() => 'Stack(capacity: $capacity, list: $list)';
}
