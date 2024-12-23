import 'package:json_annotation/json_annotation.dart';


part 'case_model.g.dart';
@JsonSerializable()
class CasesModel {
  @JsonKey(name: "msg")
  final String? msg;
  @JsonKey(name: "calls")
  final List<CallModel>? calls;

  CasesModel({
    this.msg,
    this.calls,
  });

  factory CasesModel.fromJson(Map<String, dynamic> json) =>
      _$CasesModelFromJson(json);
}

@JsonSerializable()
class CallModel {
  final int? id;
  final String? name;
  final String? age;
  final String? phone;
  final int? doctor;
  final String? cDescription;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  CallModel({
    this.id,
    this.name,
    this.age,
    this.phone,
    this.doctor,
    this.cDescription,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory CallModel.fromJson(Map<String, dynamic> json) => _$CallModelFromJson(json);
}
