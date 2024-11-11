// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['msg'] as String?,
      token: json['token'] as String?,
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'msg': instance.message,
      'token': instance.token,
      'employee': instance.employee,
    };

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
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

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
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
