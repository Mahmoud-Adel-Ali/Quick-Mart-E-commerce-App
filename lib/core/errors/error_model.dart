import 'package:quick_mart_app/core/api/api_keys.dart';

class ErrorModel {
  final int statusCode;
  final bool isSuccess;
  final dynamic message;
  final dynamic data;

  ErrorModel(
      {required this.statusCode,
      required this.isSuccess,
      required this.data,
      required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      statusCode: json[ApiKeys.statusCode],
      message: json[ApiKeys.message],
      isSuccess: json[ApiKeys.isSuccess],
      data: json[ApiKeys.data],
    );
  }
}
// {
//     "statusCode": 400,
//     "isSuccess": false,
//     "message": "Email is Exist",
//     "data": null
// }