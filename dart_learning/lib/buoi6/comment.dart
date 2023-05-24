// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uuid/uuid.dart';

class CustomComment {
  String commentContent;
  String id;
  String postID;
  CustomComment({
    String? id,
    required this.commentContent,
    required this.postID,
  }) : id = id ?? Uuid().v4();

  @override
  String toString() =>
      '\n \t \t Comment(commentContent: $commentContent, id: $id, postID: $postID) \n';
}
