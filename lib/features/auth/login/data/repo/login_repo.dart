import 'package:hospital_mange/core/networking/api_result.dart';
import 'package:hospital_mange/features/auth/login/data/apis/login_api_services.dart';
import 'package:hospital_mange/features/auth/login/data/models/login_request_body.dart';
import 'package:hospital_mange/features/auth/login/data/models/login_response.dart';

import '../../../../../core/networking/api_error_handler.dart';

class LoginRepo {
  final LoginApiServices _loginApiServices;

  LoginRepo(this._loginApiServices);
  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _loginApiServices.login(loginRequestBody);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
