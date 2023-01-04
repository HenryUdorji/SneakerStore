import 'package:flutter/material.dart';
import 'package:sneakerstore/shared/shared.dart';
import 'package:sneakerstore/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Home',
      //     style: AppTextStyles.h2,
      //   ),
      //   centerTitle: true,
      //   elevation: 0,
      // ),
      backgroundColor: AppColors.primaryLightBlue,
      body: Center(
        child: Image.asset('assets/image_assets/welcomeImage1.png'),
      ),
    );
  }
}
