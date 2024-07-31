import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/app_images.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.quickmartImage,
    required this.searchIcon,
    required this.suffSerchField,
  });

  final String quickmartImage;
  final String searchIcon;
  final String suffSerchField;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? quickmartImage,
    String? searchIcon,
    String? suffSerchField,
  }) {
    return MyAssets(
      quickmartImage: quickmartImage ?? this.quickmartImage,
      searchIcon: searchIcon ?? this.searchIcon,
      suffSerchField: suffSerchField ?? this.suffSerchField,
    );
  }

  @override
  ThemeExtension<MyAssets> lerp(
    covariant ThemeExtension<MyAssets>? other,
    double t,
  ) {
    if (other is! MyAssets) {
      return this;
    }
    return MyAssets(
      quickmartImage: quickmartImage,
      searchIcon: searchIcon,
      suffSerchField: suffSerchField
    );
  }

  static const MyAssets dark = MyAssets(
    quickmartImage: Assets.imagesQuickmartDarkMode,
    searchIcon: Assets.imagesSearchWhite,
    suffSerchField: Assets.imagesSuffSearchWhite,
  );
  static const MyAssets light = MyAssets(
    quickmartImage: Assets.imagesQuickmartLightMode,
    searchIcon: Assets.imagesSearchBlack,
    suffSerchField: Assets.imagesSuffSearchBlack,

  );
}
