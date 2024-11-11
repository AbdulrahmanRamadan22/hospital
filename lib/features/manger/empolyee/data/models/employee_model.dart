import 'package:json_annotation/json_annotation.dart';

part 'employee_model.g.dart';

@JsonSerializable()
class EmployeeModel {
  final String? msg;
  final List<Employees>? employees;

  EmployeeModel({this.msg, this.employees});

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}

@JsonSerializable()
class Employees {
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

  Employees(
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

  factory Employees.fromJson(Map<String, dynamic> json) =>
      _$EmployeesFromJson(json);
}
