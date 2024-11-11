import 'package:dio/dio.dart';
import 'package:hospital_mange/features/auth/login/data/apis/login_apis_constants.dart';
import 'package:hospital_mange/features/auth/login/data/models/login_request_body.dart';
import 'package:hospital_mange/features/auth/login/data/models/login_response.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';

part 'login_api_services.g.dart';

@RestApi(baseUrl: ConstantApi.apiBaseUrl)
abstract class LoginApiServices {
  factory LoginApiServices(Dio dio, {String baseUrl}) = _LoginApiServices;

  /// Post Method => request data .
  @POST(LoginApisConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
