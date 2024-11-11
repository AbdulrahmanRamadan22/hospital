import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import '../../../../core/helper/sixbox.dart';
import '../../../../core/routing/routs.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';
import 'widgets/category_empoyee.dart';
import 'widgets/employee_bloc_builder.dart';
import 'widgets/search_employee.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        onPressed: () {
          context.pushNamed(Routes.addUser);
        },
        backgroundColor: ColorsApp.mainColor,
        child: Icon(
          Icons.add,
          color: ColorsApp.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: ColorsApp.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Employee',
          style: TextStyles.font17Black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 20,
        ),
        child: Column(
          children: [
            const SearchEmployee(),
            virticalspace(20),
            const CategoryEmployee(),
            virticalspace(20),
            const Expanded(child: EmployeeBlocBuilder()),
          ],
        ),
      ),
    );
  }
}
