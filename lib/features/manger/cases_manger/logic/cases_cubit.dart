import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/features/manger/cases_manger/data/repo/cases_repo.dart';
import 'package:hospital_mange/features/manger/cases_manger/logic/cases_state.dart';

import '../../../../core/helper/constants.dart';

class CasesCuibt extends Cubit<CasesState> {
  final CasesRepo _casesRepo;

  CasesCuibt(this._casesRepo) : super(const CasesState.initial());

  void getAllCases() async {
    emit(const CasesState.loading());

    final response =
        await _casesRepo.getAllCases(token: "host__${SharedPrefValues.token}");

    response.when(success: (employeeDate) {
      emit(CasesState.success(employeeDate));
    }, failure: (errorHandler) {
      emit(CasesState.error(errorHandler));
    });
  }
}
