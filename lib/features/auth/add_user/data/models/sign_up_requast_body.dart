// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
part 'sign_up_requast_body.g.dart';

@JsonSerializable()
class SignUpRequastBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String address;
  final String gender;
  final String birthdate;
  final String status;
  final String role;
  SignUpRequastBody({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.gender,
    required this.birthdate,
    required this.status,
    required this.role,
  });
  Map<String, dynamic> toJson() => _$SignUpRequastBodyToJson(this);
}
