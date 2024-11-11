import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/features/manger/empolyee/ui/widgets/employee/employee_item.dart';

import '../../../../../../core/helper/sixbox.dart';
import '../../../../../../core/routing/routs.dart';
import '../../../data/models/employee_model.dart';

class ListViewEmployees extends StatelessWidget {
  final List<Employees>? employees;

  const ListViewEmployees({super.key, this.employees});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => virticalspace(16),
        padding: EdgeInsets.zero,
        itemCount: employees?.length ?? 0,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => context.pushNamed(Routes.profileEmployee,
                arguments: employees?[index]),
            child: EmployeeItem(
              employees: employees?[index],
            ),
          );
        },
      ),
    );
  }
}
