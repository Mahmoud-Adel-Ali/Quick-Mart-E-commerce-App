import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';

import '../../features/auth/data/repos/auth_repo_implementation.dart';
import '../api/dio_consumer.dart';

final getit = GetIt.instance;
void setupServicesLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
  getit.registerSingleton<Dio>(Dio());
  getit.registerSingleton<DioConsumer>(DioConsumer(dio: getit.get<Dio>()));
  getit.registerSingleton<AuthRepoImplementation>(
      AuthRepoImplementation(dio: getit.get<DioConsumer>()));
}
