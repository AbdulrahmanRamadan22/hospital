
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hospital_mange/core/networking/api_error_model.dart';
import 'package:hospital_mange/features/manger/cases_manger/data/models/case_model.dart';


part  'cases_state.freezed.dart';


@freezed
class CasesState<T> with _$CasesState<T> {
  const factory CasesState.initial() = _Initial;
  const factory CasesState.loading() = CasesLoading;
  const factory CasesState.success(CasesModel casesModel) = CasesSuccess;
  const factory CasesState.error(ApiErrorModel apiErrorModel) = CasesError;
}
