import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quick_mart_app/core/errors/exception.dart';
import 'package:quick_mart_app/core/manager/repo/product_repo.dart';

import '../../api/dio_consumer.dart';
import '../../api/end_points.dart';
import '../../models/all_category_model/all_category_model.dart';
import '../../models/all_product_model/all_product_model.dart';

class ProductRepoImpl implements ProductRepo {
  DioConsumer dio;
  ProductRepoImpl({required this.dio});
  @override
  Future<Either<String, AllProductModel>> getAllProducts() async {
    try {
      var respons = await dio.get(EndPoints.getAllProducts);
      AllProductModel allProductModel = AllProductModel.fromJson(respons);
      if (allProductModel.status ?? false) {
        log("All products count: ${allProductModel.allProductModelData?.products?.length}");
        return right(allProductModel);
      } else {
        return left('Failed to fetch products');
      }
    } on DioException catch (e) {
      return left('Failed to fetch products: ${e.message}');
    }
  }

  @override
  Future<Either<String, AllCategoryModel>> getCatergories() async {
    try {
      var response = await dio.get(EndPoints.getAllCategories);
      AllCategoryModel allCategoryModel = AllCategoryModel.fromJson(response);
      if (allCategoryModel.status ?? false) {
        return right(allCategoryModel);
      } else {
        return left(allCategoryModel.message ?? 'Failed to fetch categories');
      }
    } on DioException catch (e) {
      return left('Failed to fetch categories: ${e.message}');
    }
  }

  @override
  Future<Either<String, AllProductModel>> getCategoryProducts(int id) async {
    try {
      var response = await dio.get(EndPoints.getCategoryProducts(id));
      AllProductModel allProductModel = AllProductModel.fromJson(response);
      if (allProductModel.status ?? false) {
        return right(allProductModel);
      } else {
        return left(allProductModel.message ?? 'Failed to fetch products');
      }
    } on ServerException catch (e) {
      return left('Failed to fetch products: ${e.errorModel.message}');
    }
  }
}
