import 'all_category_model_data.dart';

class AllCategoryModel {
  bool? status;
  dynamic message;
  AllCategoryModelData? allCategoryModelData;

  AllCategoryModel({this.status, this.message, this.allCategoryModelData});

  factory AllCategoryModel.fromJson(Map<String, dynamic> json) {
    return AllCategoryModel(
      status: json['status'] ?? false,
      message: json['message'],
      allCategoryModelData: json['data'] == null
          ? null
          : AllCategoryModelData.fromJson(
              Map<String, dynamic>.from(json['data'])),
    );
  }
}
