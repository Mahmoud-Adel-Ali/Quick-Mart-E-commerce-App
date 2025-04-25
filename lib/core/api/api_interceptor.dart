import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:quick_mart_app/core/api/api_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';

class ApiInterceptor extends Interceptor {
  final Map<String, CancelToken> _activeRequests = {};

  String _buildRequestKey(RequestOptions options) {
    return "${options.method}_${options.uri.toString()}";
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Attach token
    options.headers[ApiKeys.authorization] =
        CacheHelper().getString(ApiKeys.token);
    options.headers[ApiKeys.lang] = 'en';

    // Generate unique key for this request
    final key = _buildRequestKey(options);

    // Cancel previous request if it exists
    if (_activeRequests.containsKey(key)) {
      log("🚫 Cancelling duplicate request: $key");
      _activeRequests[key]?.cancel("Duplicate request");
      _activeRequests.remove(key);
    }

    // Create new CancelToken and assign it to the request
    final cancelToken = CancelToken();
    options.cancelToken = cancelToken;
    _activeRequests[key] = cancelToken;

    print("➡️ New request started: $key");

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final key = _buildRequestKey(response.requestOptions);
    _activeRequests.remove(key);
    log("✅ Request completed: $key");
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final key = _buildRequestKey(err.requestOptions);
    _activeRequests.remove(key);
    log("❌ Request error: $key");
    handler.next(err);
  }
}
