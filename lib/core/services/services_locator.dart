import 'package:get_it/get_it.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';

final getit = GetIt.instance;

void setupServicesLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
}
