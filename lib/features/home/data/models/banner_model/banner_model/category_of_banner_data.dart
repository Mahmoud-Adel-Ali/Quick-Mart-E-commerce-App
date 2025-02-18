import '../../../../../../core/api/api_keys.dart';

class CategoryOfBannerData {
  num? id;
  String? image;
  String? name;

  CategoryOfBannerData({this.id, this.image, this.name});

  factory CategoryOfBannerData.fromJson(Map<String, dynamic> json) {
    return CategoryOfBannerData(
      id: num.tryParse(json[ApiKeys.id].toString()),
      image: json[ApiKeys.image]?.toString(),
      name: json[ApiKeys.name]?.toString(),
    );
  }
}
