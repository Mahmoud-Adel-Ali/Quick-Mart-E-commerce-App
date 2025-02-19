import 'category_model.dart';

class AllCategoryModelData {
  num? currentPage;
  List<CategoryModel>? products;
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

  factory AllCategoryModelData.fromJson(Map<String, dynamic> json) =>
      AllCategoryModelData(
        currentPage: num.tryParse(json['current_page'].toString()),
        products: (json['data'] as List<dynamic>?)
            ?.map((e) => CategoryModel.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
        firstPageUrl: json['first_page_url']?.toString(),
        from: num.tryParse(json['from'].toString()),
        lastPage: num.tryParse(json['last_page'].toString()),
        lastPageUrl: json['last_page_url']?.toString(),
        nextPageUrl: json['next_page_url'],
        path: json['path']?.toString(),
        perPage: num.tryParse(json['per_page'].toString()),
        prevPageUrl: json['prev_page_url'],
        to: num.tryParse(json['to'].toString()),
        total: num.tryParse(json['total'].toString()),
      );
}
