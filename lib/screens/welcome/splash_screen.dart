import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneakerstore/screens/home/home_screen.dart';
import 'package:sneakerstore/shared/shared.dart';
import 'package:sneakerstore/widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(milliseconds: 5000),
      () => context.pushReplacement(
        const HomeScreen(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColors.primaryBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_assets/appLogo.png',
              width: 157.w,
              height: 54.h,
            ),
            Text(
              'NIKE',
              style: AppTextStyles.h1.copyWith(
                color: AppColors.white,
                fontSize: 65.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
