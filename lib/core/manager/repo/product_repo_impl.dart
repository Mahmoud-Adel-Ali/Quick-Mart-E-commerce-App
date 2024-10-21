import 'package:dartz/dartz.dart';
import 'package:quick_mart_app/core/manager/repo/product_repo.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';

class ProductRepoImpl implements ProductRepo{
  @override
  Future<Either<String, List<ProductModel>>> getAllProducts() {
    // TODO: implement getAllProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<String, List<String>>> getCatergories() {
    // TODO: implement getCatergories
    throw UnimplementedError();
  }

  @override
  Future<Either<String, List<ProductModel>>> getProductsInCategory(String categoryId) {
    // TODO: implement getProductsInCategory
    throw UnimplementedError();
  }
}