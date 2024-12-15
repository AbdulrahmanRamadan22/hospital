// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfile _$UpdateProfileFromJson(Map<String, dynamic> json) =>
    UpdateProfile(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      birthdate: json['birthdate'] as String?,
      gender: json['gender'] as String?,
      status: json['status'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UpdateProfileToJson(UpdateProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'birthdate': instance.birthdate,
      'gender': instance.gender,
      'status': instance.status,
      'avatar': instance.avatar,
    };
