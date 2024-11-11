// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "msg")
  String? message;
  String? token;
  String? name;
  String? role;

  String? image;
  LoginResponse({
    this.message,
    this.token,
    this.name,
    this.role,
    this.image,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
