import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/auth_repo_implementation.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../api/dio_consumer.dart';
import '../databases/my_cach-helper.dart';
import '../manager/repo/product_repo_impl.dart';

final getit = GetIt.instance;
void setupServicesLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
  getit.registerSingleton<Dio>(Dio());
  getit.registerSingleton<DioConsumer>(DioConsumer(dio: getit.get<Dio>()));
  getit.registerSingleton<AuthRepoImplementation>(
      AuthRepoImplementation(dio: getit.get<DioConsumer>()));
  getit.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(dio: getit.get<DioConsumer>()));
  getit.registerSingleton<ProductRepoImpl>(
      ProductRepoImpl(dio: getit.get<DioConsumer>()));
}
