import '../../api/api_keys.dart';
import 'product_model.dart';

class AllProductModelData {
  num? currentPage;
  List<ProductModel>? products;
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

  AllProductModelData({
    this.currentPage,
    this.products,
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

  factory AllProductModelData.fromJson(Map<String, dynamic> json) =>
      AllProductModelData(
        currentPage: num.tryParse(json[ApiKeys.currentPage].toString()),
        products: (json[ApiKeys.data] as List<dynamic>?)
            ?.map((e) => ProductModel.fromJson(Map<String, dynamic>.from(e)))
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
