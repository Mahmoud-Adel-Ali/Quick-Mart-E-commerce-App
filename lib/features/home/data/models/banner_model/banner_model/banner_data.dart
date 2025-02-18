import 'package:quick_mart_app/features/home/data/models/banner_model/banner_model/category_of_banner_data.dart';

import '../../../../../../core/api/api_keys.dart';

class BannerData {
  num? id;
  String? image;
  CategoryOfBannerData? category;
  dynamic product;

  BannerData({this.id, this.image, this.category, this.product});

  factory BannerData.fromJson(Map<String, dynamic> json) => BannerData(
        id: num.tryParse(json[ApiKeys.id].toString()),
        image: json[ApiKeys.image]?.toString(),
        category: json[ApiKeys.category] != null ? CategoryOfBannerData.fromJson(json[ApiKeys.category]) : null,
        product: json[ApiKeys.product],
      );
}
