// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:uuid/uuid.dart';

class Manufacturer {
  String id;
  String name;
  Manufacturer({
    String? id,
    required this.name,
  }) : id = id ?? Uuid().v4();

  Manufacturer copyWith({
    String? id,
    String? name,
  }) {
    return Manufacturer(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  String toString() => 'Manufacturer(id: $id, name: $name)';
}
