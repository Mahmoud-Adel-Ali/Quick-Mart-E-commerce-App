import 'package:dartz/dartz.dart';

import '../../models/all_category_model/all_category_model.dart';
import '../../models/all_product_model/all_product_model.dart';

abstract class ProductRepo {
  Future<Either<String, AllCategoryModel>> getCatergories();
  Future<Either<String, AllProductModel>> getAllProducts();
}
