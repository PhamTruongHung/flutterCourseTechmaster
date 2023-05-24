import 'package:dart_learning/buoi6/car.dart';
import 'package:dart_learning/buoi6/comment.dart';
import 'package:dart_learning/buoi6/member.dart';
import 'package:dart_learning/buoi6/motorbike.dart';
import 'package:dart_learning/buoi6/post.dart';
import 'package:dart_learning/buoi6/screen_size.dart';
import 'package:dart_learning/buoi6/size_type_phake.dart';

void main() async {
  print('\n-------------Buoi 6 - Bai 1---------------');
  Car car = Car(name: 'Car');
  car.startEngine();
  car.accelerate();
  Motorbike motorbike = Motorbike(name: 'Motorbike');
  motorbike.startEngine();
  motorbike.brake();

  print('\n-------------Buoi 6 - Bai 2---------------');
  Member member = Member(
      name: 'Hung',
      imageUrl: 'imageUrl',
      fullName: 'fullName',
      birthday: DateTime.now(),
      phoneNumber: 'phoneNumber',
      email: 'email',
      sex: 'sex',
      posts: []);

  Post post1 = Post(content: 'content', memberID: member.id, comments: []);
  Post post2 = Post(content: 'content', memberID: member.id, comments: []);

  CustomComment comment1 =
      CustomComment(commentContent: 'commentContent', postID: post1.id);
  CustomComment comment2 =
      CustomComment(commentContent: 'commentContent', postID: post1.id);
  CustomComment comment3 =
      CustomComment(commentContent: 'commentContent', postID: post2.id);
  CustomComment comment4 =
      CustomComment(commentContent: 'commentContent', postID: post2.id);

  post1.addComment(comment1);
  post1.addComment(comment2);
  post2.addComment(comment3);
  post2.addComment(comment4);

  member.addPost(post1);
  member.addPost(post2);

  print(member.toString());

  print('\n-------------Buoi 6 - Bai 3---------------');

  SizeTypeFake sizeTypeFake = SizeTypeFake(width: 430, height: 932);
  ScreenSize screenSize = ScreenSize();
  screenSize.init(sizeTypeFake);

  print(screenSize);
  print(screenSize.scaleWitdh(3));

  print('\n-------------Buoi 6 - Bai 4---------------');
}
