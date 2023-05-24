// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_learning/buoi6/size_type_phake.dart';

class ScreenSize {
  late SizeTypeFake _designScreenSize;
  late final SizeTypeFake _deviceScreenSize =
      SizeTypeFake(width: 375, height: 812); //iPhone
  ScreenSize();

  void init(SizeTypeFake sizeTypeFake) {
    _designScreenSize = sizeTypeFake;
  }

  double scaleWitdh(double designNumber) {
    try {
      return designNumber / _deviceScreenSize.width;
    } catch (e) {
      print(e);
      return designNumber;
    }
  }

  @override
  String toString() =>
      'ScreenSize(_designScreenSize: $_designScreenSize, _deviceScreenSize: $_deviceScreenSize)';
}
