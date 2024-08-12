
import 'package:quick_mart_app/core/api/api_keys.dart';

import 'data.dart';

class SignUpModel {
  int? statusCode;
  bool? isSuccess;
  String? message;
  Data? data;

  SignUpModel({this.statusCode, this.isSuccess, this.message, this.data});

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
      statusCode: json[ApiKeys.statusCode] as int?,
      isSuccess: json[ApiKeys.isSuccess] as bool?,
      message: json[ApiKeys.message] as String?,
      data: json[ApiKeys.data] == null
          ? null
          : Data.fromJson(json[ApiKeys.data] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKeys.statusCode: statusCode,
      ApiKeys.isSuccess: isSuccess,
      ApiKeys.message: message,
      ApiKeys.data: data?.toJson(),
    };
  }
}
