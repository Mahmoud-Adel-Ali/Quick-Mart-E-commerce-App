
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/style/colors/colors_dark.dart';
import 'package:quick_mart_app/core/style/colors/colors_light.dart';
import 'package:quick_mart_app/core/style/theme/assets_extension.dart';
import 'package:quick_mart_app/core/style/theme/color_extention.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor:ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
      MyAssets.dark,
    ],
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light,
      MyAssets.light,
    ],
  );
}
