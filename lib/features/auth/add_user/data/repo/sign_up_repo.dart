// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hospital_mange/core/networking/api_result.dart';
import 'package:hospital_mange/features/auth/add_user/data/apis/sign_up_services.dart';
import 'package:hospital_mange/features/auth/add_user/data/models/sign_up_requast_body.dart';
import 'package:hospital_mange/features/auth/add_user/data/models/sign_up_response.dart';

import '../../../../../core/networking/api_error_handler.dart';

class SignUpRepo {
  final SignUpApisServices _signUpApisServices;
  SignUpRepo(
    this._signUpApisServices,
  );
  Future<ApiResult<SignUpResponse>> signUp(
    SignUpRequastBody signUpRequastBody,
  ) async {
    try {
      final response = await _signUpApisServices.signUp(signUpRequastBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
