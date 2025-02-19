import 'package:dartz/dartz.dart';
import 'package:quick_mart_app/core/models/all_product_model/product_model.dart';

abstract class ProductRepo {
  // Future<Either<String, List<dynamic>>> getCatergories();
  Future<Either<String, List<ProductModel>>> getAllProducts();
}
