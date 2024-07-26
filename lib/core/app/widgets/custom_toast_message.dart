import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

 class CustomToastMessage {
  FToast fToast = FToast();
  void removeAllToast() {
    // To remove present shwoing toast
    fToast.removeCustomToast();
    // To clear the queue
    fToast.removeQueuedCustomToasts();
  }

  void bottomToast(
    BuildContext context, {
    required String msg,
    required ToastMessageType type,
  }) {
    fToast.init(context);
    return fToast.showToast(
      child: _buildToast(context, msg: msg, type: type),
      gravity: ToastGravity.BOTTOM,
      positionedToastBuilder: (context, child) =>
          Positioned(bottom: 75, right: 0, left: 0, child: child),
    );
  }

  void topToast(
    BuildContext context, {
    required String msg,
    required ToastMessageType type,
  }) {
    fToast.init(context);
    return fToast.showToast(
      child: _buildToast(context, msg: msg, type: type),
      gravity: ToastGravity.TOP,
      positionedToastBuilder: (context, child) =>
          Positioned(top: 75, right: 0, left: 0, child: child),
    );
  }

  String toastImage(ToastMessageType type) {
    switch (type) {
      case ToastMessageType.error:
        return Assets.imagesError;
      case ToastMessageType.info:
        return Assets.imagesInfo;
      case ToastMessageType.success:
        return Assets.imagesSuccess;
      case ToastMessageType.warning:
        return Assets.imagesWarning;
    }
  }

  _buildToast(
    BuildContext context, {
    required String msg,
    required ToastMessageType type,
  }) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: context.color.grey50,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(toastImage(type)),
          const SizedBox(width: 16.0),
          Text(msg, style: Styless.textSemiBold14(context)),
        ],
      ),
    );
  }
}

enum ToastMessageType { error, info, success, warning }
