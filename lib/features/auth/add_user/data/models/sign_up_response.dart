// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  EmploeeyDate? emploeeyDate;
  SignUpResponse({
    this.message,
    this.emploeeyDate,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class EmploeeyDate {
  String? name;
  String? email;
  String? phone;
  String? address;
  String? password;
  String? gender;
  String? birthdate;
  String? status;
  String? role;
  EmploeeyDate({
    this.name,
    this.email,
    this.phone,
    this.address,
    this.password,
    this.gender,
    this.birthdate,
    this.status,
    this.role,
  });

  factory EmploeeyDate.fromJson(Map<String, dynamic> json) =>
      _$EmploeeyDateFromJson(json);
}
