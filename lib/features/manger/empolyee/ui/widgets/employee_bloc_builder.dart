

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/features/manger/empolyee/logic/employee_state.dart';
import 'package:hospital_mange/features/manger/empolyee/ui/widgets/list_view_doctors.dart';
import 'package:redacted/redacted.dart';

import '../../logic/employee_cubit.dart';

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
          loading: () => const ListViewDoctors().redacted(
            context: context,
            redact: true,

            configuration: RedactedConfiguration(
              animationDuration: const Duration(seconds: 20), //default
            ),
          ),
          success: (employeeResponse) => ListViewDoctors(
            employees: employeeResponse.employees,
          ),
          error: (error) => const Center(child: CircularProgressIndicator()),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}



