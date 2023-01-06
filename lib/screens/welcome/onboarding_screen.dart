import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneakerstore/screens/welcome/model/onboarding.dart';
import 'package:sneakerstore/shared/shared.dart';
import 'package:sneakerstore/widgets/widgets.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();

  @override
  void initState() {
    pageController.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      body: PageView(
        padEnds: false,
        controller: pageController,
        children: [
          Container(
            color: AppColors.primaryLightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  OnBoarding.list[0].headingText,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.h1.copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColors.white,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    OnBoarding.list[0].imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          PageContainer(onBoarding: OnBoarding.list[1]),
          PageContainer(onBoarding: OnBoarding.list[2]),
        ],
      ),
    );
  }
}

class PageContainer extends StatelessWidget {
  const PageContainer({Key? key, required this.onBoarding}) : super(key: key);

  final OnBoarding onBoarding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      color: AppColors.primaryLightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(onBoarding.imagePath),
          Text(
            onBoarding.headingText,
            textAlign: TextAlign.center,
            style: AppTextStyles.h1.copyWith(
              fontSize: 34.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
