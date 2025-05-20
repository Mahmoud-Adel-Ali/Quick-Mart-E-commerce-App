import 'package:dio/dio.dart';
import 'package:quick_mart_app/core/api/api_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKeys.authorization] = // mean token
        CacheHelper().getString(ApiKeys.token);
    options.headers[ApiKeys.lang] = 'en';
    super.onRequest(options, handler);
  }
}
