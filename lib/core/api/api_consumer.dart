abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, String>? queryParameters,
    bool isFormData = false,
  });
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, String>? queryParameters,
    bool isFormData = false,
  });
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, String>? queryParameters,
    bool isFormData = false,
  });
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, String>? queryParameters,
    bool isFormData = false,
  });
}
