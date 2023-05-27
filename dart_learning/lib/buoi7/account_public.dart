// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AccountPublic {
  int id;
  String name;
  String avatar;
  AccountPublic({
    required this.id,
    required this.name,
    required this.avatar,
  });

  AccountPublic copyWith({
    int? id,
    String? name,
    String? avatar,
  }) {
    return AccountPublic(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'avatar': avatar,
    };
  }

  factory AccountPublic.fromMap(Map<String, dynamic> map) {
    return AccountPublic(
      id: map['id'] as int,
      name: map['name'] as String,
      avatar: map['avatar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AccountPublic.fromJson(String source) =>
      AccountPublic.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AccountPublic(id: $id, name: $name, avatar: $avatar)';

  @override
  bool operator ==(covariant AccountPublic other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.avatar == avatar;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ avatar.hashCode;
}
