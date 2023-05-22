// ignore_for_file: public_member_api_docs, sort_constructors_first
class Queue {
  final int capacity;
  final List<String> list = <String>[];

  Queue({
    required this.capacity,
  });

  bool isEmpty() {
    return list.isEmpty;
  }

  bool isFull() {
    return list.length == capacity;
  }

  String dequeue() {
    if (this.isEmpty()) {
      throw ('This queue was empty when trying to remove first item!!!');
    }
    String firstItem = list.first;
    list.remove(firstItem);
    return firstItem;
  }

  void enqueue(String value) {
    if (this.isFull()) {
      throw ('This queue was full when add this value: $value');
    }
    print(value);
    list.add(value);
  }

  @override
  String toString() => 'Queue(capacity: $capacity, list: $list)';
}
