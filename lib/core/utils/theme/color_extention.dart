import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/colors/colors_dark.dart';
import 'package:quick_mart_app/core/utils/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.cyan,
    required this.cyan50,
    required this.black,
    required this.white,
    required this.grey50,
    required this.grey100,
    required this.grey150,
    required this.red,
    required this.cyan50General,
    required this.blue,
    required this.purple,
    required this.yellow,
    required this.orange,
    required this.merigold,
    required this.browen,
    required this.pink,
    required this.buttonColor,
    required this.mainColor,
    required this.textColor,
  });
  // brand color
  final Color cyan;
  final Color cyan50;
  final Color black;
  final Color white;
  // grey color
  final Color grey50;
  final Color grey100;
  final Color grey150;
  // General
  final Color red;
  final Color cyan50General;
  final Color blue;
  final Color purple;
  final Color yellow;
  final Color orange;
  final Color merigold;
  final Color browen;
  final Color pink;
  // my color
  final Color buttonColor;
  final Color mainColor;
  final Color textColor;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? cyan,
    Color? cyan50,
    Color? black,
    Color? white,
    Color? grey50,
    Color? grey100,
    Color? grey150,
    Color? red,
    Color? cyan50General,
    Color? blue,
    Color? purple,
    Color? yellow,
    Color? orange,
    Color? merigold,
    Color? browen,
    Color? pink,
    Color? buttonColor,
    Color? mainColor,
    Color? textColor,
  }) {
    return MyColors(
      cyan: cyan ?? this.cyan,
      cyan50: cyan50 ?? this.cyan50,
      black: black ?? this.black,
      white: white ?? this.white,
      grey50: grey50 ?? this.grey50,
      grey100: grey100 ?? this.grey100,
      grey150: grey150 ?? this.grey150,
      red: red ?? this.red,
      cyan50General: cyan50General ?? this.cyan50General,
      blue: blue ?? this.blue,
      purple: purple ?? this.purple,
      yellow: yellow ?? this.yellow,
      orange: orange ?? this.orange,
      merigold: merigold ?? this.merigold,
      browen: browen ?? this.browen,
      pink: pink ?? this.pink,
      buttonColor: buttonColor ?? this.buttonColor,
      mainColor: mainColor ?? this.mainColor,
      textColor: textColor ?? this.textColor,
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
      cyan: cyan,
      cyan50: cyan50,
      black: black,
      white: white,
      grey50: grey50,
      grey100: grey100,
      grey150: grey150,
      blue: blue,
      browen: browen,
      cyan50General: cyan50General,
      merigold: merigold,
      orange: orange,
      pink: pink,
      purple: purple,
      red: red,
      yellow: yellow,
      buttonColor: buttonColor,
      mainColor: mainColor,
      textColor: textColor,
    );
  }

  static const MyColors dark = MyColors(
    cyan: ColorsDark.cyan,
    cyan50: ColorsDark.cyan50,
    black: ColorsDark.black,
    white: ColorsDark.white,
    grey50: ColorsDark.grey50,
    grey100: ColorsDark.grey100,
    grey150: ColorsDark.grey150,
    red: ColorsDark.red,
    cyan50General: ColorsDark.cyan50General,
    blue: ColorsDark.blue,
    purple: ColorsDark.purple,
    yellow: ColorsDark.yellow,
    orange: ColorsDark.orange,
    merigold: ColorsDark.merigold,
    browen: ColorsDark.browen,
    pink: ColorsDark.pink,
    buttonColor: ColorsDark.cyan,
    mainColor: ColorsDark.black,
    textColor : ColorsDark.white,
  );

  static const MyColors light = MyColors(
    cyan: ColorsLight.cyan,
    cyan50: ColorsLight.cyan50,
    black: ColorsLight.black,
    white: ColorsLight.white,
    grey50: ColorsLight.grey50,
    grey100: ColorsLight.grey100,
    grey150: ColorsLight.grey150,
    red: ColorsLight.red,
    cyan50General: ColorsLight.cyan50General,
    blue: ColorsLight.blue,
    purple: ColorsLight.purple,
    yellow: ColorsLight.yellow,
    orange: ColorsLight.orange,
    merigold: ColorsLight.merigold,
    browen: ColorsLight.browen,
    pink: ColorsLight.pink,
    buttonColor: ColorsLight.black,
    mainColor: ColorsDark.white,
    textColor : ColorsLight.black,
  );
}
