import 'package:hospital_mange/features/manger/cases_manger/data/models/case_model.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../apis/case_api_services.dart';

class CasesRepo {
  final CaseApiServices _caseApiServices;
  CasesRepo(this._caseApiServices);

  Future<ApiResult<CasesModel>> getAllCases({
    required String token,
  }) async {
    try {
      final response = await _caseApiServices.getAllCases(token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
