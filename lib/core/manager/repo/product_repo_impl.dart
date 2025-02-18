import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quick_mart_app/core/manager/repo/product_repo.dart';
import 'package:quick_mart_app/core/models/product_model/category.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';

class ProductRepoImpl implements ProductRepo {
  Dio dio = Dio();
  @override
  Future<Either<String, List<ProductModel>>> getAllProducts() async {
    try {
      var respons = await dio.get('https://api.escuelajs.co/api/v1/products/');
      if (respons.statusCode == 200) {
        List<ProductModel> products = handelProdectsJson(respons.data);
        return right(products);
      } else {
        return left('Failed to fetch products');
      }
    } on DioException catch (e) {
      return left('Failed to fetch products: ${e.message}');
    }
  }

  @override
  Future<Either<String, List<CategoryModel>>> getCatergories() async {
    try {
      var response =
          await dio.get('https://api.escuelajs.co/api/v1/categories/');
      if (response.statusCode == 200) {
        List<CategoryModel> categories = handelCategoriesToList(response);
        return right(categories);
      } else {
        return left('Failed to fetch categories');
      }
    } on DioException catch (e) {
      return left('Failed to fetch categories: ${e.message}');
    }
  }

  List<CategoryModel> handelCategoriesToList(Response<dynamic> response) {
    List<dynamic> data = response.data;
    List<CategoryModel> categories = [];
    for (var cat in data) {
      categories.add(CategoryModel.fromJson(cat));
    }
    return categories;
  }

  List<ProductModel> handelProdectsJson(List<dynamic> prod) {
    return prod.map((json) => ProductModel.fromJson(json)).toList();
  }
}
