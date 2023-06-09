// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_learning/models/account_public.dart';

class DataObject {
  int? id;
  String? createdAt;
  String? createdBy;
  String? title;
  List<String>? photos;
  int? status;
  bool? isEnable;
  AccountPublic? accountPublic;
  DataObject({
    required this.id,
    required this.createdAt,
    required this.createdBy,
    required this.title,
    required this.photos,
    required this.status,
    required this.isEnable,
    required this.accountPublic,
  });

  DataObject copyWith({
    int? id,
    String? createdAt,
    String? createdBy,
    String? title,
    List<String>? photos,
    int? status,
    bool? isEnable,
    AccountPublic? accountPublic,
  }) {
    return DataObject(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      title: title ?? this.title,
      photos: photos ?? this.photos,
      status: status ?? this.status,
      isEnable: isEnable ?? this.isEnable,
      accountPublic: accountPublic ?? this.accountPublic,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'title': title,
      'photos': photos,
      'status': status,
      'isEnable': isEnable,
      'accountPublic': accountPublic?.toMap(),
    };
  }

  factory DataObject.fromMap(Map<String, dynamic> map) {
    return DataObject(
      id: map['id'] != null ? map['id'] as int : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      createdBy: map['createdBy'] != null ? map['createdBy'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      photos: map['photos'] != null
          ? List<String>.from((map['photos']))
          : null,
      status: map['status'] != null ? map['status'] as int : null,
      isEnable: map['isEnable'] != null ? map['isEnable'] as bool : null,
      accountPublic: map['accountPublic'] != null
          ? AccountPublic.fromMap(map['accountPublic'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataObject.fromJson(String source) =>
      DataObject.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataObject(id: $id, createdAt: $createdAt, createdBy: $createdBy, title: $title, photos: $photos, status: $status, isEnable: $isEnable, accountPublic: $accountPublic)';
  }
}
