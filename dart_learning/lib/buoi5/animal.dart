class Animal {
  String name;
  Animal({
    required this.name,
  });

  Animal copyWith({
    String? name,
  }) {
    return Animal(
      name: name ?? this.name,
    );
  }
}

class Dog extends Animal {
  Dog({required super.name});
  void walk() {
    print("$name has been walking!!!!");
  }
}

class Fish extends Animal {
  Fish({required super.name});
  void swim() {
    print("$name has been swimming!!!!");
  }
}

class Bird extends Animal {
  Bird({required super.name});
  void fly() {
    print("$name has been flying!!!!");
  }
}

class Duck extends Animal {
  Duck({required super.name});
  void walk() {
    print("$name has been walking!!!!");
  }

  void swim() {
    print("$name has been swimming!!!!");
  }

  void fly() {
    print("$name has been flying!!!!");
  }
}
