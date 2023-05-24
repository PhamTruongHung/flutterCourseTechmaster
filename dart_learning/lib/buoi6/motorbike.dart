import 'package:dart_learning/buoi6/vehicle.dart';

class Motorbike extends Vehicle {
  Motorbike({required super.name});

  void brake() {
    print('$name braked.');
  }
}
