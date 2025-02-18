import 'package:dartz/dartz.dart';

import '../../../../core/api/dio_consumer.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/errors/exception.dart';
import '../models/banner_model/banner_model/banner_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final DioConsumer dio;

  HomeRepoImpl({required this.dio});

  @override
  Future<Either<String, BannerModel>> getBannerData()async {
    try {
      final response = await dio.get(EndPoints.getBanners);
      BannerModel bannerModel = BannerModel.fromJson(response);
      if(bannerModel.status ?? false){
        return Right(bannerModel);
      }else{
        return Left(bannerModel.message ?? 'Failed to fetch banner data');}
    } on ServerException catch (e) {
      return Left(
        e.errorModel.message ?? 'There was an error , Please try again later',
      );
    }
  }
}