import 'package:quick_mart_app/core/api/api_keys.dart';

import 'all_category_model_data.dart';

class AllCategoryModel {
  bool? status;
  dynamic message;
  AllCategoryModelData? allCategoryModelData;

  AllCategoryModel({this.status, this.message, this.allCategoryModelData});

  factory AllCategoryModel.fromJson(Map<String, dynamic> json) {
    return AllCategoryModel(
      status: json[ApiKeys.status] ?? false,
      message: json[ApiKeys.message],
      allCategoryModelData: json[ApiKeys.data] == null
          ? null
          : AllCategoryModelData.fromJson(
              Map<String, dynamic>.from(json[ApiKeys.data])),
    );
  }
}
