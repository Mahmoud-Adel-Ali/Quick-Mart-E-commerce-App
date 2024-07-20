import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/style/colors/colors_dark.dart';
import 'package:quick_mart_app/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.mainColor,
    required this.buttonColor,
  });

  final Color mainColor;
  final Color buttonColor;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? mainColor,
    Color? buttonColor,
  }) {
    return MyColors(
      mainColor: mainColor ?? this.mainColor,
      buttonColor: buttonColor ?? this.buttonColor,
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
      buttonColor: buttonColor
    );
  }

  static const MyColors dark = MyColors(
    mainColor: ColorsDark.mainColor,
    buttonColor: ColorsDark.buttonColor,
  );

  static const MyColors light = MyColors(
    mainColor: ColorsLight.mainColor,
    buttonColor: ColorsLight.buttonColor,
  );
}
