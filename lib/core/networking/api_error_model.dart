// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  @JsonKey(name: 'error')
  final ErrorResponse? errorResponse;
  ApiErrorModel({
    this.message,
    this.errorResponse,
  });
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}

@JsonSerializable()
class ErrorResponse {
  final int? statusCode;
  final String? status;
  ErrorResponse({
    this.statusCode,
    this.status,
  });
  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}