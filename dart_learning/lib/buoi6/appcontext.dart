import 'package:dart_learning/buoi6/size_type_phake.dart';

class AppContext {
  static final AppContext _appContext = AppContext._internal();

  factory AppContext() {
    return _appContext;
  }
  AppContext._internal();

  SizeTypeFake designSize = SizeTypeFake(width: 430, height: 932);
  SizeTypeFake deviceSize = SizeTypeFake(width: 430, height: 932);
}
