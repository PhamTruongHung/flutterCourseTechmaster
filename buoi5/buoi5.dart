import 'animal.dart';
import 'devices.dart';
import 'manufacturer.dart';
import 'queue.dart';
import 'stack.dart';

void main() async {
  print('\n-------------Buoi 5 - Bai 1---------------');

  final dog1 = Dog(name: 'Dog1');
  dog1.walk();

  final fish1 = Fish(name: 'Fish1');
  fish1.swim();

  final bird1 = Bird(name: 'Dird1');
  bird1.fly();

  final duck1 = Duck(name: 'Duck1');
  duck1.fly();
  duck1.swim();
  duck1.walk();

  print('\n-------------Buoi 5 - Bai 2---------------');

  final manufacturer = Manufacturer(id: '234235', name: 'Honda');
  Device device = Device(
      id: '2345235',
      name: 'Cup 50',
      manufacturer: manufacturer,
      osName: 'osName',
      firmwareName: 'firmwareName');

  print(device);

  print('\n-------------Buoi 5 - Bai 3---------------');

  Stack stack = Stack(capacity: 5);

  try {
    for (var i = 1; i <= 6; i++) {
      stack.push(i.toString());
      print(stack);
    }
  } catch (e) {
    print(e);
  }

  try {
    for (var i = 1; i <= 6; i++) {
      stack.pop();
      print(stack);
    }
  } catch (e) {
    print(e);
  }

  print('\n-------------Buoi 5 - Bai 4---------------');

  Queue queue = Queue(capacity: 5);

  try {
    for (var i = 1; i <= 6; i++) {
      queue.enqueue(i.toString());
      print(queue);
    }
  } catch (e) {
    print(e);
  }

  try {
    for (var i = 1; i <= 6; i++) {
      queue.dequeue();
      print(queue);
    }
  } catch (e) {
    print(e);
  }
}
