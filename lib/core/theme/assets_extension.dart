import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.quickmartImage,
    required this.searchIcon,
    required this.suffSerchField,
    required this.homeIcon,
    required this.categoriesIcon,
    required this.myCartIcon,
    required this.heartIcon,
    required this.profileIcon,
  });

  final String quickmartImage;
  final String searchIcon;
  final String suffSerchField;
  final String homeIcon;
  final String categoriesIcon;
  final String myCartIcon;
  final String heartIcon;
  final String profileIcon;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? quickmartImage,
    String? searchIcon,
    String? suffSerchField,
    String? homeIcon,
    String? categoriesIcon,
    String? myCartIcon,
    String? heartIcon,
    String? profileIcon,
  }) {
    return MyAssets(
      quickmartImage: quickmartImage ?? this.quickmartImage,
      searchIcon: searchIcon ?? this.searchIcon,
      suffSerchField: suffSerchField ?? this.suffSerchField,
      homeIcon: homeIcon ?? this.homeIcon,
      categoriesIcon: categoriesIcon ?? this.categoriesIcon,
      myCartIcon: myCartIcon ?? this.myCartIcon,
      heartIcon: heartIcon ?? this.heartIcon,
      profileIcon: profileIcon ?? this.profileIcon,
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
      suffSerchField: suffSerchField,
      homeIcon: homeIcon,
      categoriesIcon: categoriesIcon,
      myCartIcon: myCartIcon,
      heartIcon: heartIcon,
      profileIcon: profileIcon,
    )..lerp(other, t);
  }

  static const MyAssets dark = MyAssets(
    quickmartImage: Assets.imagesQuickmartDarkMode,
    searchIcon: Assets.imagesSearchWhite,
    suffSerchField: Assets.imagesSuffSearchWhite,
    homeIcon: Assets.imagesHomeWhite,
    categoriesIcon: Assets.imagesCategoryWhite,
    myCartIcon: Assets.imagesMyCartWhite,
    heartIcon: Assets.imagesHeartWhite,
    profileIcon: Assets.imagesProfileWhite,
  );
  static const MyAssets light = MyAssets(
    quickmartImage: Assets.imagesQuickmartLightMode,
    searchIcon: Assets.imagesSearchBlack,
    suffSerchField: Assets.imagesSuffSearchBlack,
    homeIcon: Assets.imagesHomeGrey,
    categoriesIcon: Assets.imagesCategoryGrey,
    myCartIcon: Assets.imagesMyCartGrey,
    heartIcon: Assets.imagesHeartGrey,
    profileIcon: Assets.imagesProfileGrey,
  );
}
