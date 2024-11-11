

import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';


@JsonSerializable()
class UserModel {
 final String? msg;
 final Employee? employee;

  UserModel({this.msg, this.employee});


 factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

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
  @JsonKey(name: 'secure_url')
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



       factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

 
}