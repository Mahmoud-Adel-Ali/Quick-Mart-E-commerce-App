import 'package:quick_mart_app/core/api/api_keys.dart';

class Data {
  int id;
  String name;
  String email;
  String phone;
  String image;
  num? points;
  num? credit;
  String token;

  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    this.points,
    this.credit,
    required this.token,
  });
  //from json
  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json[ApiKeys.id] as int,
        name: json[ApiKeys.name] as String,
        email: json[ApiKeys.email] as String,
        phone: json[ApiKeys.phone] as String,
        image: json[ApiKeys.image] as String,
        points: json[ApiKeys.points] as num?,
        credit: json[ApiKeys.credit] as num?,
        token: json[ApiKeys.token] as String,
      );

  Map<String, dynamic> toJson() {
    return {
      ApiKeys.id: id,
      ApiKeys.name: name,
      ApiKeys.email: email,
      ApiKeys.phone: phone,
      ApiKeys.image: image,
      ApiKeys.points: points,
      ApiKeys.credit: credit,
      ApiKeys.token: token
    };
  }
}
