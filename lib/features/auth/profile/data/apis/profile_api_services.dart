import 'package:dio/dio.dart';
import 'package:hospital_mange/features/auth/profile/data/apis/profile_apis_constants.dart';
import 'package:hospital_mange/features/auth/profile/data/models/update_profile.dart';
import 'package:hospital_mange/features/auth/profile/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
part 'profile_api_services.g.dart';

@RestApi(baseUrl: ConstantApi.apiBaseUrl)
abstract class ProfileApiServices {
  factory ProfileApiServices(Dio dio, {String baseUrl}) = _ProfileApiServices;

  @GET(ProfileApisConstants.profile)
  Future<UserModel> getProfile(
    @Header('token') String token,
  );
  @PATCH(ProfileApisConstants.profileUpdate)
  Future<dynamic> updateProfile(
    @Header('token') String token,
    @Body() UpdateProfile updateProfile,
  );
}
