import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quick_mart_app/core/api/api_keys.dart';
import 'package:quick_mart_app/core/manager/repo/product_repo.dart';
import 'package:quick_mart_app/core/models/product_model/category.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';

import '../../api/dio_consumer.dart';
import '../../api/end_points.dart';

class ProductRepoImpl implements ProductRepo {
  DioConsumer dio;
  ProductRepoImpl({required this.dio});
  @override
  Future<Either<String, List<ProductModel>>> getAllProducts() async {
    try {
      var respons = await dio.get(EndPoints.getAllProducts);
      if (respons[ApiKeys.status]) {
        List<ProductModel> products = handelProdectsJson(respons[ApiKeys.data]);
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
