import 'package:dartz/dartz.dart';

import '../models/banner_model/banner_model/banner_model.dart';

abstract class HomeRepo {
  Future<Either<String, BannerModel>> getBannerData();
}
