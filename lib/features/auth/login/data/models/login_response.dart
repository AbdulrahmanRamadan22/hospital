// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "msg")
  String? message;
  String? token;
  Employee? employee;
  LoginResponse({
    this.message,
    this.token,
    this.employee,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
@JsonSerializable()
class Employee {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? gender;
  String? birthdate;
  String? password;
  String? role;
  String? status;
  String? confirmed;
  @JsonKey(name: "secure_url")
  String? secureUrl;
  String? publicId;
  String? createdAt;
  String? updatedAt;

  Employee(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.address,
      this.gender,
      this.birthdate,
      this.password,
      this.role,
      this.status,
      this.confirmed,
      this.secureUrl,
      this.publicId,
      this.createdAt,
      this.updatedAt});


  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);


}
