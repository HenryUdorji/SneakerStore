import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  static String poppins = 'Poppins';
  static String raleway = 'Raleway';

  static TextStyle h1 = TextStyle(
    fontFamily: raleway,
    fontSize: 32.sp,
    fontWeight: FontWeight.w700
  );

  static TextStyle h2 = TextStyle(
      fontFamily: raleway,
      fontSize: 26.sp,
      fontWeight: FontWeight.w600
  );

  static TextStyle paragraph = TextStyle(
      fontFamily: poppins,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400
  );
}