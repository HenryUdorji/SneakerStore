import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants{
 static const size = _Size();
}

class SizeUtil{
  static const designWidth = 375.0;
  static const designHeight = 812.0;

  static double get deviceWidth{
    return ScreenUtil().screenWidth;
  }

  static double get deviceHeight{
    return ScreenUtil().screenHeight;
  }
}

class _Size{
  const _Size();
  static const double _boarderRadius = 12;
  static const double _textFieldRadius = 4;
  static const double _checkBoxRadius = 4;
  static const double _tagRadius = 2;
  static const double _tileBoxRadius = 6;
  static const double _toolBarHeight = 10;

  double get borderRadius => _boarderRadius.r;
  double get textFieldRadius => _textFieldRadius.r;
  double get checkBoxRadius => _checkBoxRadius.r;
  double get tagRadius => _tagRadius.r;
  double get tileBoxRadius => _tileBoxRadius.r;
  double get toolBarHeight => _toolBarHeight.h;
}

