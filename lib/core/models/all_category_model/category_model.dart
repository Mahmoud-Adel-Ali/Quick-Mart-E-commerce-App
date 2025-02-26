import 'package:quick_mart_app/core/api/api_keys.dart';

class CategoryModel {
  num? id;
  String? name;
  String? image;

  CategoryModel({this.id, this.name, this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: num.tryParse(json[ApiKeys.id].toString()),
        name: json[ApiKeys.name]?.toString(),
        image: json[ApiKeys.image]?.toString(),
      );
}
