
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/employee_model.dart';

part  'employee_state.freezed.dart';


@freezed
class EmployeeState<T> with _$EmployeeState<T> {
  const factory EmployeeState.initial() = _Initial;
  const factory EmployeeState.loading() = Loading;
  const factory EmployeeState.success(EmployeeModel employeeModel) = Success;
  const factory EmployeeState.error(dynamic error) = Error;
}
