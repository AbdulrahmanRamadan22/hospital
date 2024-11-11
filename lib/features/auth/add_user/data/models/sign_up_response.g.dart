// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      message: json['message'] as String?,
      emploeeyDate: json['emploeeyDate'] == null
          ? null
          : EmploeeyDate.fromJson(json['emploeeyDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'emploeeyDate': instance.emploeeyDate,
    };

EmploeeyDate _$EmploeeyDateFromJson(Map<String, dynamic> json) => EmploeeyDate(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      password: json['password'] as String?,
      gender: json['gender'] as String?,
      birthdate: json['birthdate'] as String?,
      status: json['status'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$EmploeeyDateToJson(EmploeeyDate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'password': instance.password,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'status': instance.status,
      'role': instance.role,
    };
