import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneakerstore/shared/shared.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.padding,
    this.backgroundColor,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.drawerScrimColor,
    this.bottomNavigationBar,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.restorationId,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Widget? drawer;
  final DrawerCallback? onDrawerChanged;
  final Widget? endDrawer;
  final DrawerCallback? onEndDrawerChanged;
  final Color? drawerScrimColor;
  final Widget? bottomNavigationBar;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final String? restorationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: padding ?? EdgeInsets.symmetric(horizontal: 20.w),
        child: body,
      ),
      appBar: appBar,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      backgroundColor: backgroundColor ?? AppColors.white,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      onDrawerChanged: onDrawerChanged,
      endDrawer: endDrawer,
      onEndDrawerChanged: onDrawerChanged,
      drawerScrimColor: drawerScrimColor,
      restorationId: restorationId,
    );
  }
}
