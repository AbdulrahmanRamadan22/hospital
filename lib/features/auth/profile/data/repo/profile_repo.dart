import 'dart:math';

import 'package:hospital_mange/core/networking/api_error_handler.dart';
import 'package:hospital_mange/core/networking/api_result.dart';
import 'package:hospital_mange/features/auth/profile/data/apis/profile_api_services.dart';
import 'package:hospital_mange/features/auth/profile/data/models/update_profile.dart';
import 'package:hospital_mange/features/auth/profile/data/models/user_model.dart';

class ProfileRepo {
  final ProfileApiServices _profileApiServices;
  ProfileRepo(this._profileApiServices);

  Future<ApiResult<UserModel>> getProfile({
    required String token,
  }) async {
    try {
      final response = await _profileApiServices.getProfile(token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<dynamic>> updateProfile({
    required String token,
    required UpdateProfile updateProfile,
  }) async {
    try {
      final response =
          await _profileApiServices.updateProfile(token, updateProfile);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
