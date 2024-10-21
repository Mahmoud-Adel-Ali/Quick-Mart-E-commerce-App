import 'package:quick_mart_app/core/api/api_keys.dart';

class Data {
  bool? isAuthenticated;
  String? id;
  String? email;
  String? username;
  String? phoneNumber;
  String? token;

  Data({
    this.isAuthenticated,
    this.id,
    this.email,
    this.username,
    this.phoneNumber,
    this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      isAuthenticated: json[ApiKeys.isAuthenticated] as bool?,
      id: json[ApiKeys.id] as String?,
      email: json[ApiKeys.email] as String?,
      username: json[ApiKeys.username] as String?,
      phoneNumber: json[ApiKeys.phoneNumber] as String?,
      token: json[ApiKeys.token] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKeys.isAuthenticated: isAuthenticated,
      ApiKeys.id: id,
      ApiKeys.email: email,
      ApiKeys.username: username,
      ApiKeys.phoneNumber: phoneNumber,
      ApiKeys.token: token,
    };
  }
}
