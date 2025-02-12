import 'package:quick_mart_app/core/api/api_keys.dart';

import 'data.dart';

class AuthModel {
  bool status;
  String message;
  Data? data;

  AuthModel({
    required this.status,
    required this.message,
    this.data,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      status: json[ApiKeys.status],
      message: json[ApiKeys.message],
      data:
          json[ApiKeys.data] == null ? null : Data.fromJson(json[ApiKeys.data]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKeys.status: status,
      ApiKeys.message: message,
      ApiKeys.data: data?.toJson() ?? {},
    };
  }
}
