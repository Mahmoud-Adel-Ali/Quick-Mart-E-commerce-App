import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quick_mart_app/core/manager/repo/product_repo.dart';
import 'package:quick_mart_app/core/models/all_categories_model.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';

class ProductRepoImpl implements ProductRepo {
  Dio dio = Dio();
  @override
  Future<Either<String, List<ProductModel>>> getAllProducts() async {
    try {
      var respons = await dio.get('https://fakestoreapi.com/products');
      if (respons.statusCode == 200) {
        List<ProductModel> products =
            jsonDecode(respons.data).map((json) => ProductModel.fromJson(json));

        return right(products);
      } else {
        return left('Failed to fetch products');
      }
    } on DioException catch (e) {
      return left('Failed to fetch products: ${e.message}');
    }
  }

  @override
  Future<Either<String, List<String>>> getCatergories() async {
    try {
      var response = await dio.get('https://fakestoreapi.com/categories');
      if (response.statusCode == 200) {
        AllCategoriesModel allCategoriesModel =
            AllCategoriesModel.fromJson(response.data);
        return right(allCategoriesModel.allCategories);
      } else {
        return left('Failed to fetch categories');
      }
    } on DioException catch (e) {
      return left('Failed to fetch categories: ${e.message}');
    }
  }

  @override
  Future<Either<String, List<ProductModel>>> getProductsInCategory(
      String categoryId) async {
    try {
      var response = await dio.get(
        'https://fakestoreapi.com/products/category/:$categoryId',
      );
      if (response.statusCode == 200) {
        List<ProductModel> products = jsonDecode(response.data)
            .map((json) => ProductModel.fromJson(json));

        return right(products);
      } else {
        return left('Failed to fetch products in category');
      }
    } on DioException catch (e) {
      return left('Failed to fetch products in category: ${e.message}');
    }
  }
}
