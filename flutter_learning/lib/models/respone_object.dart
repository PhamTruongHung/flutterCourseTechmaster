// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_learning/models/data_object.dart';


class ResponeObject {
  int code;
  String message;
  List<DataObject> data;
  ResponeObject({
    required this.code,
    required this.message,
    required this.data,
  });

  ResponeObject copyWith({
    int? code,
    String? message,
    List<DataObject>? data,
  }) {
    return ResponeObject(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory ResponeObject.fromMap(Map<String, dynamic> map) {
    return ResponeObject(
      code: map['code'] as int,
      message: map['message'] as String,
      data: List<DataObject>.from(
        map['data'].map<DataObject>(
          (x) => DataObject.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponeObject.fromJson(String source) =>
      ResponeObject.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ResponeObject(code: $code, message: $message, data: $data)';
}
