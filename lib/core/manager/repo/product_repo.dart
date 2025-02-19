import 'package:dartz/dartz.dart';

import '../../models/all_product_model/all_product_model.dart';

abstract class ProductRepo {
  Future<Either<String, List<dynamic>>> getCatergories();
  Future<Either<String, AllProductModel>> getAllProducts();
}
