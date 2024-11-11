import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/features/manger/empolyee/logic/employee_state.dart';
import 'package:hospital_mange/features/manger/empolyee/ui/widgets/employee/list_view_employees.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../logic/employee_cubit.dart';

class EmployeeBlocBuilder extends StatelessWidget {
  const EmployeeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeCuibt, EmployeeState>(
      builder: (context, state) {
        // ignore: unused_label
        buildWhen:
        (previous, current) =>
            current is Loading || current is Success || current is Error;
        return state.maybeWhen(
          loading: () => Center(
              child: CircularProgressIndicator(
            backgroundColor: ColorsApp.gray,
            color: ColorsApp.mainColor,
          )),
          success: (employeeResponse) => ListViewEmployees(
            employees: employeeResponse.employees,
          ),
          error: (error) => const Center(child: CircularProgressIndicator()),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
