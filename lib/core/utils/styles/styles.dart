import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/fonts/font_family_helper.dart';

abstract class Styless {
  // 10
  static TextStyle textRegular10(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 10,
        color: context.color.grey150,
      );
  static TextStyle textSemiBold10(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 10,
        color: context.color.grey150,
      );
  // 12
  static TextStyle textRegular12(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: context.color.grey150,
      );
  static TextStyle textSemiBold12(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: context.color.grey150,
      );
  // 14
  static TextStyle textSemiBold14(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: context.color.grey150,
      );
  static TextStyle textMedium14(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: context.color.grey150,
      );
  static TextStyle textRegular14(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: context.color.grey150,
      );
  // 16
  static TextStyle textSemiBold16(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: context.color.textColor,
      );
  static TextStyle textMedium16(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: context.color.textColor,
      );
  static TextStyle textRegular16(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: context.color.textColor,
      );
  // 18
  static TextStyle textReguler18(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: context.color.textColor,
      );
  static TextStyle textSemiBold18(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: context.color.textColor,
      );
  static TextStyle textBold18(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: context.color.textColor,
      );
// 24
  static TextStyle textReguler24(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 24,
        color: context.color.textColor,
      );
  static TextStyle textSemiBold24(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: context.color.textColor,
      );
  static TextStyle textBold24(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: context.color.textColor,
      );
// 32
  static TextStyle textReguler32(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w400,
        fontSize: 32,
        color: context.color.textColor,
      );
  static TextStyle textSemiBold32(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w600,
        fontSize: 32,
        color: context.color.textColor,
      );
  static TextStyle textBold32(BuildContext context) => TextStyle(
        fontFamily: FontFamilyHelper.plusJakartaSans,
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: context.color.textColor,
      );
}
