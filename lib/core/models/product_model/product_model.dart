import '../../api/api_keys.dart';

class ProductModel {
  num? id;
  num? price;
  num? oldPrice;
  num? discount;
  String? image;
  String? name;
  String? description;
  List<String>? images;
  bool? inFavorites;
  bool? inCart;

  ProductModel({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.images,
    this.inFavorites,
    this.inCart,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: num.tryParse(json[ApiKeys.id].toString()),
        price: num.tryParse(json[ApiKeys.price].toString()),
        oldPrice: num.tryParse(json[ApiKeys.oldPrice].toString()),
        discount: num.tryParse(json[ApiKeys.discount].toString()),
        image: json[ApiKeys.image]?.toString(),
        name: json[ApiKeys.name]?.toString(),
        description: json[ApiKeys.description]?.toString(),
        images: List<String>.from(json[ApiKeys.images] ?? []),
        inFavorites: json[ApiKeys.inFavorites]?.toString().contains("true"),
        inCart: json[ApiKeys.inCart]?.toString().contains("true"),
      );
}
