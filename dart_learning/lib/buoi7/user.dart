// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  int id;
  String name;
  String avatarUrl;
  String createdDate;
  User({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.createdDate,
  });

  User copyWith({
    int? id,
    String? name,
    String? avatarUrl,
    String? createdDate,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'avatarUrl': avatarUrl,
      'createdDate': createdDate,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      name: map['name'] as String,
      avatarUrl: map['avatar'] as String,
      createdDate: map['createdDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, name: $name, avatarUrl: $avatarUrl, createdDate: $createdDate)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.avatarUrl == avatarUrl &&
        other.createdDate == createdDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        avatarUrl.hashCode ^
        createdDate.hashCode;
  }
}
