

class StatusCodeModel {
  final int statusCode;

  StatusCodeModel({required this.statusCode});

  factory StatusCodeModel.fromJson(Map<String, dynamic> json) {
    return StatusCodeModel(statusCode: json[ApiKeys.statusCode]);
  }
}
