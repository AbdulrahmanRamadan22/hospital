// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    EmployeeModel(
      msg: json['msg'] as String?,
      employees: (json['employees'] as List<dynamic>?)
          ?.map((e) => Employees.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmployeeModelToJson(EmployeeModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'employees': instance.employees,
    };

Employees _$EmployeesFromJson(Map<String, dynamic> json) => Employees(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      gender: json['gender'] as String?,
      birthdate: json['birthdate'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      confirmed: json['confirmed'] as String?,
      secureUrl: json['secure_url'] as String?,
      publicId: json['publicId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$EmployeesToJson(Employees instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'password': instance.password,
      'role': instance.role,
      'status': instance.status,
      'confirmed': instance.confirmed,
      'secure_url': instance.secureUrl,
      'publicId': instance.publicId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
