import 'dart:convert';

import 'package:dart_learning/buoi7/respone_object.dart';
import 'package:http/http.dart' as http;

void main() async {
  print('\n-------------Buoi 7 - Bai 1---------------');
  Future<http.Response> fetchData() {
    return http.get(Uri.parse('http://api.quynhtao.com/api/issues?limit=5'));
  }

  await fetchData().then((value) {
    var jsonDataList = jsonDecode(value.body.toString());
    ResponeObject responeObject = ResponeObject.fromMap(jsonDataList);
    print(responeObject.toString());
  });

  print('\n-------------Buoi 7 - Bai 2---------------');
}
