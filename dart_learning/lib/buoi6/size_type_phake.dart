// ignore_for_file: public_member_api_docs, sort_constructors_first
class SizeTypeFake {
  double width;
  double height;
  SizeTypeFake({
    required this.width,
    required this.height,
  });

  @override
  String toString() => 'SizeTypeFake(width: $width, height: $height)';
}
