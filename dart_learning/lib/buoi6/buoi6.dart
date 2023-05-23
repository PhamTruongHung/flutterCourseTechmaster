void main() {
  final rectangle = Rectangle(length: 1, height: 2);
  try {
    print(rectangle.calculateArea());
  } catch (e) {
    print(e);
  }

  final circle = Circle(radius: 1);
  try {
    print(circle.calculateArea());
  } catch (e) {
    print(e);
  }

  final triangle = Triangle(lenght: 3, height: 3);
  try {
    print(triangle.calculateArea());
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

class Rectangle extends Shape {
  Rectangle({required double length, required double height})
      : super(length: length, height: height);

  @override
  double calculateArea() {
    if (length == null || height == null) {
      throw Exception('Please provide both length and height!');
    }
    return length! * height!;
  }
}

class Circle extends Shape {
  Circle({required double radius}) : super(radius: radius);

  @override
  double calculateArea() {
    if (radius == null) {
      throw Exception('Please provide the radius!');
    }
    return 3.14 * radius! * radius!;
  }
}

class Triangle extends Shape {
  Triangle({required double lenght, required double height})
      : super(height: height, length: lenght);
  @override
  double calculateArea() {
    if (length == null || height == null) {
      throw Exception('Please provide both base length and height!');
    }
    return 0.5 * length! * height!;
  }
}
