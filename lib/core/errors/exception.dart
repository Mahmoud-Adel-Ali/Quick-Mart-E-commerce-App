import 'package:dio/dio.dart';
import 'package:quick_mart_app/core/errors/error_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;

  ServerException({required this.errorModel});
}

void handleDioException(DioException e) {
  // Helper to safely extract ErrorModel from response or create default
  ErrorModel extractErrorModel() {
    if (e.response?.data != null) {
      try {
        return ErrorModel.fromJson(e.response!.data);
      } catch (_) {
        // In case parsing fails
        return ErrorModel(
          statusCode: e.response?.statusCode ?? 500,
          isSuccess: false,
          message: 'Unexpected error format',
          data: null,
        );
      }
    } else {
      return ErrorModel(
        statusCode: 500,
        isSuccess: false,
        message: 'No response from server',
        data: null,
      );
    }
  }

  // Handle different Dio error types
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
    case DioExceptionType.badResponse:
      throw ServerException(errorModel: extractErrorModel());

    case DioExceptionType.cancel:
      throw ServerException(
        errorModel: ErrorModel(
          statusCode: 499,
          isSuccess: false,
          message: 'Request was cancelled by the interceptor',
          data: null,
        ),
      );

    case DioExceptionType.connectionError:
      if (e.response == null) {
        throw ServerException(
          errorModel: ErrorModel(
            statusCode: 500,
            isSuccess: false,
            data: null,
            message: 'Lost Internet Connection',
          ),
        );
      } else {
        throw ServerException(errorModel: extractErrorModel());
      }
  }
}
