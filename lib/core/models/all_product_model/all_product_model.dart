import 'data.dart';

class AllProductModel {
  bool? status;
  dynamic message;
  AllProductModelData? allProductModelData;

  AllProductModel({this.status, this.message, this.allProductModelData});

  factory AllProductModel.fromJson(Map<String, dynamic> json) {
    return AllProductModel(
      status: json['status']?.toString().contains("true"),
      message: json['message'],
      allProductModelData: json['data'] == null
          ? null
          : AllProductModelData.fromJson(Map<String, dynamic>.from(json['data'])),
    );
  }
}
