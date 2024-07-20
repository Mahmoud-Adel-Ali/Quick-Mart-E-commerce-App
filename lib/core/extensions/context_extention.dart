import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/style/theme/assets_extension.dart';
import 'package:quick_mart_app/core/style/theme/color_extention.dart';

extension ContextExt on BuildContext {
    // colors
  MyColors get color => Theme.of(this).extension<MyColors>()!;
  // text style
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
  // colors
  MyAssets get image => Theme.of(this).extension<MyAssets>()!;
  // navigator
  Future<dynamic> pushName(String routename, {Object? object}) {
    return Navigator.of(this).pushNamed(routename, arguments: object);
  }

  Future<dynamic> pushReplacementNamed(String routename, {Object? object}) {
    return Navigator.of(this)
        .pushReplacementNamed(routename, arguments: object);
  }

  // Future<dynamic> pushAndRemoveUntil(String routename, {Object? object}) {
  //   return Navigator.of(this).pushAndRemoveUntil(routename, (route) => false)
  // }

  void pop() => Navigator.of(this).pop();
}
