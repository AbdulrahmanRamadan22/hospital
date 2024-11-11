import 'package:bloc/bloc.dart';
import 'package:hospital_mange/core/helper/constants.dart';
import 'package:hospital_mange/features/manger/empolyee/logic/employee_state.dart';

import '../data/repo/employee_repo.dart';

class EmployeeCuibt extends Cubit<EmployeeState> {
  final EmployeeRepo _employeeRepo;

  EmployeeCuibt(this._employeeRepo) : super(const EmployeeState.initial());

  void getAllEmployee() async {
    emit(const EmployeeState.loading());

    // final token = await SharedPrefHelper.getData(key: SharedPrefKeys.token);

    final response = await _employeeRepo.getAllEmployee(
        token: "host__${SharedPrefValues.token}");

    response.when(success: (employeeDate) {
      emit(EmployeeState.success(employeeDate));
    }, failure: (errorHandler) {
      emit(EmployeeState.error(errorHandler));
    });
  }
}
