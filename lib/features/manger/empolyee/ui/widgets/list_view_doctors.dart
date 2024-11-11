import 'package:flutter/material.dart';
import 'package:hospital_mange/features/manger/empolyee/ui/widgets/employee_item.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../data/models/employee_model.dart';

class ListViewDoctors extends StatelessWidget {

    final List<Employees>? employees;

  const ListViewDoctors({super.key, this.employees});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => virticalspace(16),
      padding: EdgeInsets.zero,
      itemCount: employees?.length ?? 0,
      itemBuilder: (context, index) {
        return  EmployeeItem(
          employees: employees?[index],
        );
      },
    );
  }
}
