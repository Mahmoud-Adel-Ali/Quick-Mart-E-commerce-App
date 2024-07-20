import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/style/colors/colors_dark.dart';
import 'package:quick_mart_app/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.mainColor,
    required this.buttonColor,
    required this.textColor,
    required this.textColorWithOpacity,
  });

  final Color mainColor;
  final Color buttonColor;
  final Color textColor;
  final Color textColorWithOpacity;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? mainColor,
    Color? buttonColor,
    Color? textColor,
    Color? textColorWithOpacity,
  }) {
    return MyColors(
      mainColor: mainColor ?? this.mainColor,
      buttonColor: buttonColor ?? this.buttonColor,
      textColor: textColor ?? this.textColor,
      textColorWithOpacity: textColorWithOpacity ?? this.textColorWithOpacity,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      mainColor: mainColor,
      buttonColor: buttonColor,
      textColor: textColor,
      textColorWithOpacity: textColorWithOpacity,
    );
  }

  static const MyColors dark = MyColors(
      mainColor: ColorsDark.mainColor,
      buttonColor: ColorsDark.buttonColor,
      textColor: ColorsDark.textColor,
      textColorWithOpacity: ColorsDark.textColorWithOpacity);

  static const MyColors light = MyColors(
      mainColor: ColorsLight.mainColor,
      buttonColor: ColorsLight.buttonColor,
      textColor: ColorsLight.textColor,
      textColorWithOpacity: ColorsLight.textColorWithOpacity);
}
