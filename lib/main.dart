import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneakerstore/screens/home/home_screen.dart';
import 'package:sneakerstore/screens/welcome/splash_screen.dart';
import 'package:sneakerstore/shared/shared.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(SizeUtil.designWidth, SizeUtil.designHeight),
      builder: (context, child) {
        return MaterialApp(
          title: 'Sneaker Store',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AppColors.primaryBlue,
          ),
          home: child,
        );
      },
      child: const SplashScreen(),
    );
  }
}
