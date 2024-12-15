import 'package:json_annotation/json_annotation.dart';

part 'update_profile.g.dart';

@JsonSerializable()
class UpdateProfile {
  final String? name;
  final String? phone;
  final String? address;
  final String? birthdate;
  final String? gender;
  final String? status;
  final String? avatar;

  UpdateProfile({
    this.name,
    this.phone,
    this.address,
    this.birthdate,
    this.gender,
    this.status,
    this.avatar,
  });
  Map<String, dynamic> toJson() => _$UpdateProfileToJson(this);
}
