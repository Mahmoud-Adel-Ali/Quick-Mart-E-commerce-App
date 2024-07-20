import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/fonts/font_family_helper.dart';

abstract class Styless {
  static TextStyle textRegular12(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: context.color.textColorWithOpacity,
      );
  static TextStyle textSemiBold14(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: context.color.textColor,
      );
  static TextStyle textMedium14(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: context.color.textColorWithOpacity,
      );
  static TextStyle textRegular14(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: context.color.textColorWithOpacity,
      );
  static TextStyle textSemiBold16(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: context.color.textColor,
      );
  static TextStyle textBold18(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: context.color.textColor,
      );
  static TextStyle textBold24(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: context.color.textColor,
      );
}
