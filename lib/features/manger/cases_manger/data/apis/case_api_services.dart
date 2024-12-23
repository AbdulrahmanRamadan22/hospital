import 'package:dio/dio.dart';
import 'package:hospital_mange/features/manger/cases_manger/data/apis/case_apis_constants.dart';
import 'package:hospital_mange/features/manger/cases_manger/data/models/case_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/networking/api_constants.dart';

part 'case_api_services.g.dart';

@RestApi(baseUrl: ConstantApi.apiBaseUrl)
abstract class CaseApiServices {
  factory CaseApiServices(Dio dio, {String baseUrl}) = _CaseApiServices;

  @GET(CaseApisConstants.getAllCases)
  Future<CasesModel> getAllCases(
    @Header('token') String token,
  );
}
