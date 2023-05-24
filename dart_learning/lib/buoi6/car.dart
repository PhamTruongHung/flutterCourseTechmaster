import 'package:dart_learning/buoi6/vehicle.dart';

class Car extends Vehicle {
  Car({required super.name});

  void accelerate() {
    print('$name accelerated.');
  }
}
