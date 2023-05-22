// ignore_for_file: public_member_api_docs, sort_constructors_first

class Manufacturer {
  String id;
  String name;
  Manufacturer({
    required this.id,
    required this.name,
  });

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
