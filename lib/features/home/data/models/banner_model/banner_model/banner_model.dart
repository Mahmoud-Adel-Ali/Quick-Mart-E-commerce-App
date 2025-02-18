import '../../../../../../core/api/api_keys.dart';
import 'banner_data.dart';

class BannerModel {
  bool? status;
  String? message;
  List<BannerData>? data;

  BannerModel({this.status, this.message, this.data});

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        status: json[ApiKeys.status]?.toString().contains("true"),
        message: json[ApiKeys.message],
        data: (json[ApiKeys.data] as List<dynamic>?)
            ?.map((e) => BannerData.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );
}
