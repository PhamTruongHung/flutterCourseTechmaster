import 'package:dart_learning/buoi6/comment.dart';
import 'package:uuid/uuid.dart';

class Post {
  String content;
  List<String>? imageUrls;
  final String memberID;
  final String id;
  List<CustomComment>? comments;
  Post({
    required this.content,
    this.imageUrls,
    required this.memberID,
    String? id,
    this.comments,
  }) : id = id ?? Uuid().v4();

  CustomComment addComment(CustomComment comment) {
    comments!.add(comment);
    return comment;
  }

  @override
  String toString() {
    return '\n \t Post(content: $content, imageUrls: $imageUrls, memberID: $memberID, postID: $id, comments: $comments) \n';
  }
}
