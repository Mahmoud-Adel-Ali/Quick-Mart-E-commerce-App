import '../../api/api_keys.dart';
import 'all_product_model_data.dart';

class AllProductModel {
  bool? status;
  dynamic message;
  AllProductModelData? allProductModelData;

  AllProductModel({this.status, this.message, this.allProductModelData});

  factory AllProductModel.fromJson(Map<String, dynamic> json) {
    return AllProductModel(
      status: json[ApiKeys.status] ?? false,
      message: json[ApiKeys.message],
      allProductModelData: json[ApiKeys.data] == null
          ? null
          : AllProductModelData.fromJson(
              Map<String, dynamic>.from(json[ApiKeys.data])),
    );
  }
}
