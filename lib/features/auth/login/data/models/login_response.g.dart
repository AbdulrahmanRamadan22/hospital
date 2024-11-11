// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['msg'] as String?,
      token: json['token'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'msg': instance.message,
      'token': instance.token,
      'name': instance.name,
      'role': instance.role,
      'image': instance.image,
    };
