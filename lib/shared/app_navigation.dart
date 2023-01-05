import 'package:flutter/material.dart';

extension AppNavigation on BuildContext {

  Future<T?> push<T extends Object?>(Widget child) async {
    return Navigator.of(this).push(
      MaterialPageRoute(builder: (context) => child)
    );
  }

  void pop<T extends Object?>([T? result]) async {
    return Navigator.of(this).pop(result);
  }

  Future<T?> pushReplacement<T extends Object?>(Widget child) async {
    return Navigator.of(this).pushReplacement(
      MaterialPageRoute(builder: (context) => child),
    );
  }
}