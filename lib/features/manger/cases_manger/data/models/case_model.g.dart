// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CasesModel _$CasesModelFromJson(Map<String, dynamic> json) => CasesModel(
      msg: json['msg'] as String?,
      calls: (json['calls'] as List<dynamic>?)
          ?.map((e) => CallModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CasesModelToJson(CasesModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'calls': instance.calls,
    };

CallModel _$CallModelFromJson(Map<String, dynamic> json) => CallModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      age: json['age'] as String?,
      phone: json['phone'] as String?,
      doctor: (json['doctor'] as num?)?.toInt(),
      cDescription: json['cDescription'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CallModelToJson(CallModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'phone': instance.phone,
      'doctor': instance.doctor,
      'cDescription': instance.cDescription,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
