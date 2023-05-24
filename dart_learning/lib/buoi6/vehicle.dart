// ignore_for_file: public_member_api_docs, sort_constructors_first
class Vehicle {
  String name;
  Vehicle({
    required this.name,
  });
  void startEngine() {
    print('$name startEngine.');
  }

  void stopEngine() {
    print('$name stopEngine.');
  }
}
