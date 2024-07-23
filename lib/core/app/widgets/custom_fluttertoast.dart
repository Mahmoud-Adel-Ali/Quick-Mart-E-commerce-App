import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomFluttertoast {
  CustomFluttertoast();
  dynamic toastMessage(
    BuildContext context, {
    required String msg,
    Color? backgroundColor,
  }) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor ?? context.color.red,
      textColor: context.color.textColor,
      fontSize: 16.0,
    );
  }
}
