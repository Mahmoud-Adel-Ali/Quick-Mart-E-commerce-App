import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/style/colors/colors_dark.dart';
import 'package:quick_mart_app/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.mainColor,
    required this.buttonColor,
    required this.textColor,
    required this.textColorWithOpacity,
    required this.onBordingContainerColor,
  });

  final Color mainColor;
  final Color buttonColor;
  final Color textColor;
  final Color textColorWithOpacity;
  final Color onBordingContainerColor;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? mainColor,
    Color? buttonColor,
    Color? textColor,
    Color? textColorWithOpacity,
    Color? onBordingContainerColor,
  }) {
    return MyColors(
      mainColor: mainColor ?? this.mainColor,
      buttonColor: buttonColor ?? this.buttonColor,
      textColor: textColor ?? this.textColor,
      textColorWithOpacity: textColorWithOpacity ?? this.textColorWithOpacity,
      onBordingContainerColor: onBordingContainerColor ?? this.onBordingContainerColor,
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
      onBordingContainerColor:onBordingContainerColor,
    );
  }

  static const MyColors dark = MyColors(
      mainColor: ColorsDark.mainColor,
      buttonColor: ColorsDark.buttonColor,
      textColor: ColorsDark.textColor,
      textColorWithOpacity: ColorsDark.textColorWithOpacity,
      onBordingContainerColor:ColorsDark.onBordingContainerColor,
      );

  static const MyColors light = MyColors(
      mainColor: ColorsLight.mainColor,
      buttonColor: ColorsLight.buttonColor,
      textColor: ColorsLight.textColor,
      textColorWithOpacity: ColorsLight.textColorWithOpacity,
      onBordingContainerColor:ColorsLight.onBordingContainerColor,
      );
}
