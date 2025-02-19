import 'all_category_model_data.dart';

class AllProductModel {
  bool? status;
  dynamic message;
  AllCategoryModelData? allCategoryModelData;

  AllProductModel({this.status, this.message, this.allCategoryModelData});

  factory AllProductModel.fromJson(Map<String, dynamic> json) {
    return AllProductModel(
      status: json['status'] ?? false,
      message: json['message'],
      allCategoryModelData: json['data'] == null
          ? null
          : AllCategoryModelData.fromJson(
              Map<String, dynamic>.from(json['data'])),
    );
  }
}
