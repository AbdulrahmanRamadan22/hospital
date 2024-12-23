import 'package:hospital_mange/core/networking/api_error_handler.dart';
import 'package:hospital_mange/core/networking/api_result.dart';

import '../apis/employee_api_services.dart';
import '../models/employee_model.dart';

class EmployeeRepo {
  final EmployeeApiServices _employeeApiServices;

  EmployeeRepo(this._employeeApiServices);

  Future<ApiResult<EmployeeModel>> getAllEmployee({
    required String token,
  }) async {
    try {
      final response = await _employeeApiServices.getAllEmployee(token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
