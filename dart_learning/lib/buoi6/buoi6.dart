// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  final reactangle = Reactangle(length: 1, height: 2);
  try {
    print(reactangle.calculateArea());
  } catch (e) {
    print(e);
  }
}

abstract class Shape {
  double? length;
  double? height;
  double? radius;
  Shape({
    this.length,
    this.height,
    this.radius,
  });

  double calculateArea();
}

class Reactangle extends Shape {
  Reactangle({required double height, required double length})
      : super(height: height, length: length);
  @override
  double calculateArea() {
    if (length == null || height == null) {
      throw ("Can nhap chieu dai va chieu cao!!!");
    }
    return length! * height!;
  }
}

class Circle extends Shape {
  @override
  double calculateArea() {
    if (radius == null) {
      throw ("Can nhap ban kinh!!!");
    }
    return 3.14 * radius! * radius!;
  }
}

class Triangle extends Shape {
  @override
  double calculateArea() {
    if (length == null || height == null) {
      throw ("Can nhap chieu dai canh day va chieu cao!!!");
    }
    return 0.5 * length! * height!;
  }
}
