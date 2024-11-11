import 'package:dio/dio.dart';
import 'package:hospital_mange/features/manger/empolyee/data/apis/profile_apis_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';
import '../../../../auth/profile/data/models/user_model.dart';
import '../models/employee_model.dart';

part 'employee_api_services.g.dart';

@RestApi(baseUrl: ConstantApi.apiBaseUrl)
abstract class EmployeeApiServices {
  factory EmployeeApiServices(Dio dio, {String baseUrl}) = _EmployeeApiServices;

  @GET(EmployeeApisConstants.getAllEmployee)
  Future<EmployeeModel> getAllEmployee(
    @Header('token') String token,
  );
}
