import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.quickmartImage,
  });

  final String quickmartImage;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? quickmartImage,
  }) {
    return MyAssets(
      quickmartImage: quickmartImage ?? this.quickmartImage,
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
    );
  }

  static const MyAssets dark = MyAssets(
    quickmartImage: Assets.imagesQuickmartDarkMode,
  );
  static const MyAssets light = MyAssets(
    quickmartImage: Assets.imagesQuickmartLightMode,
  );
}
