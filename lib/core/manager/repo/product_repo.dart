import 'package:dartz/dartz.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';

abstract class ProductRepo {
  Future<Either<String, List<dynamic>>> getCatergories();
  // Future<Either<String, List<String>>> getSubcategories(String categoryId);
  // Future<Either<String, Product>> getProductById(String productId);
  // Future<Either<String, List<ProductModel>>> getProductsInCategory(
  //     String categoryId);
  Future<Either<String, List<ProductModel>>> getAllProducts();
}
