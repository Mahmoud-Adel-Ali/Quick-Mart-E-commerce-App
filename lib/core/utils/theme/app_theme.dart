
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/colors/colors_dark.dart';
import 'package:quick_mart_app/core/utils/colors/colors_light.dart';
import 'package:quick_mart_app/core/utils/theme/assets_extension.dart';
import 'package:quick_mart_app/core/utils/theme/color_extention.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor:ColorsDark.black,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
      MyAssets.dark,
    ],
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.white,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light,
      MyAssets.light,
    ],
  );
}
