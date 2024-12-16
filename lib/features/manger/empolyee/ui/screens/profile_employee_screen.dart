import 'package:flutter/material.dart';
import 'package:hospital_mange/features/manger/empolyee/data/models/employee_model.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../auth/profile/ui/widgets/image_profile_and_edit.dart';
import '../widgets/profile_employee/details_of_profile_employee.dart';

class ProfileEmployeeScreen extends StatelessWidget {
  final Employees? employee;
  const ProfileEmployeeScreen({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkheavenly,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: ColorsApp.white),
        backgroundColor: ColorsApp.darkheavenly,
        elevation: 0,
        title: Text('Profile', style: TextStyles.font17white),
        centerTitle: true,
      ),
      body: Column(
        children: [
          virticalspace(10),
          ImageProfileAndEdit(
            image: employee?.secureUrl,
          ),
          virticalspace(20),
          Text("${employee?.name}", style: TextStyles.font20white),
          virticalspace(5),
          Expanded(
            child: DetailsOfProfileEmployee(
              employee: employee,
            ),
          ),
        ],
      ),
    );
  }
}
