// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_requast_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequastBody _$SignUpRequastBodyFromJson(Map<String, dynamic> json) =>
    SignUpRequastBody(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      gender: json['gender'] as String,
      birthdate: json['birthdate'] as String,
      status: json['status'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$SignUpRequastBodyToJson(SignUpRequastBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'address': instance.address,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'status': instance.status,
      'role': instance.role,
    };
