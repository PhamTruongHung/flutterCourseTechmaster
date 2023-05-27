// ignore_for_file: public_member_api_docs, sort_constructors_first
class QueueGenerics<T> {
  final int capacity;
  final List<T> list = <T>[];

  QueueGenerics({
    required this.capacity,
  });

  bool isEmpty() {
    return list.isEmpty;
  }

  bool isFull() {
    return list.length == capacity;
  }

  T dequeue() {
    if (isEmpty()) {
      throw ('--> This queue was empty when trying to remove first item!!!');
    }
    T firstItem = list.first;
    list.remove(firstItem);
    return firstItem;
  }

  void enqueue(T value) {
    if (isFull()) {
      throw ('--> This queue was full when add this value: $value');
    }
    list.add(value);
  }

  @override
  String toString() => 'Queue(capacity: $capacity, list: $list)';
}
