import 'package:dio/dio.dart';
import 'package:hospital_mange/features/auth/add_user/data/models/sign_up_requast_body.dart';
import 'package:hospital_mange/features/auth/add_user/data/models/sign_up_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../../../core/networking/api_constants.dart';
import 'sign_up_constants.dart';

part 'sign_up_services.g.dart';

@RestApi(baseUrl: ConstantApi.apiBaseUrl)
abstract class SignUpApisServices {
  factory SignUpApisServices(Dio dio, {String? baseUrl}) = _SignUpApisServices;

  @POST(SignUpConstants.signUpEd)
  Future<SignUpResponse> signUp(
    @Body() SignUpRequastBody signUpRequastBody,
  );
}
