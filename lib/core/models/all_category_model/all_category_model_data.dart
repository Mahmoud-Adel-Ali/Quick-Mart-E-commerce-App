import '../../api/api_keys.dart';
import 'category_model.dart';

class AllCategoryModelData {
  num? currentPage;
  List<CategoryModel>? categories;
  String? firstPageUrl;
  num? from;
  num? lastPage;
  String? lastPageUrl;
  dynamic nextPageUrl;
  String? path;
  num? perPage;
  dynamic prevPageUrl;
  num? to;
  num? total;

  AllCategoryModelData({
    this.currentPage,
    this.categories,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory AllCategoryModelData.fromJson(Map<String, dynamic> json) =>
      AllCategoryModelData(
        currentPage: num.tryParse(json[ApiKeys.currentPage].toString()),
        categories: (json[ApiKeys.data] as List<dynamic>?)
            ?.map((e) => CategoryModel.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
        firstPageUrl: json[ApiKeys.firstPageUrl]?.toString(),
        from: num.tryParse(json[ApiKeys.from].toString()),
        lastPage: num.tryParse(json[ApiKeys.lastPage].toString()),
        lastPageUrl: json[ApiKeys.lastPageUrl]?.toString(),
        nextPageUrl: json[ApiKeys.nextPageUrl],
        path: json[ApiKeys.path]?.toString(),
        perPage: num.tryParse(json[ApiKeys.perPage].toString()),
        prevPageUrl: json[ApiKeys.prevPageUrl],
        to: num.tryParse(json[ApiKeys.to].toString()),
        total: num.tryParse(json[ApiKeys.total].toString()),
      );
}
