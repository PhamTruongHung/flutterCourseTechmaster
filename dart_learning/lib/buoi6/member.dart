import 'package:dart_learning/buoi6/post.dart';
import 'package:uuid/uuid.dart';

class Member {
  String name;
  String imageUrl;
  String fullName;
  DateTime birthday;
  String phoneNumber;
  String email;
  String sex;
  String id;
  List<Post>? posts;
  Member({
    required this.name,
    required this.imageUrl,
    required this.fullName,
    required this.birthday,
    required this.phoneNumber,
    required this.email,
    required this.sex,
    String? id,
    this.posts,
  }) : id = id ?? Uuid().v4();

  Post addPost(Post post) {
    posts!.add(post);
    return post;
  }

  @override
  String toString() {
    return '\n Member(name: $name, imageUrl: $imageUrl, fullName: $fullName, birthday: $birthday, phoneNumber: $phoneNumber, email: $email, sex: $sex, memberID: $id, posts: $posts)';
  }
}
