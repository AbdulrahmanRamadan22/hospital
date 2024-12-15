import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/core/di/dependancy_ingection.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/features/auth/add_user/ui/add_user_screen.dart';
import 'package:hospital_mange/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:hospital_mange/features/auth/login/ui/login_screen.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_cubit.dart';
import 'package:hospital_mange/features/doctor/calls/ui/calls_doctor_screen.dart';
import 'package:hospital_mange/features/doctor/cases/ui/cases_details.dart';
import 'package:hospital_mange/features/doctor/cases/ui/widgets/doctor_case_details.dart';
import 'package:hospital_mange/features/doctor/home/ui/home_doctor_screen.dart';
import 'package:hospital_mange/features/layout/ui/home_screen.dart';
import 'package:hospital_mange/features/manger/case_detaails/ui/case_details_screen.dart';
import 'package:hospital_mange/features/manger/cases_manger/ui/cases_screen.dart';
import 'package:hospital_mange/features/manger/empolyee/data/models/employee_model.dart';
import 'package:hospital_mange/features/manger/home_manger/ui/home_manger_screen.dart';
import 'package:hospital_mange/features/resceptionist/calls/ui/calls_resecption.dart';
import 'package:hospital_mange/features/resceptionist/ui/home_resecpion.dart';
import '../../features/auth/add_user/data/logic/cubit/sign_up_cubit.dart';
import '../../features/auth/profile/ui/profile_screen.dart';
import '../../features/manger/empolyee/logic/employee_cubit.dart';
import '../../features/manger/empolyee/ui/screens/empolyee_screen.dart';
import '../../features/manger/empolyee/ui/screens/profile_employee_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //LoginScreen
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginScreen(),
          ),
        );
      // HomeMangerScreen
      case Routes.homeMangerScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeMangerScreen(),
        );
      // casesMangerScreen
      case Routes.casesMangerScreen:
        return MaterialPageRoute(
          builder: (context) => const CasesMangerScreen(),
        );
      // caseDetailsScreen
      case Routes.casesDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const CaseDetailsScreen(),
        );
      //EmpolyeeScreen
      case Routes.employeesScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => EmployeeCuibt(getIt())..getAllEmployee(),
            child: const EmployeesScreen(),
          ),
        );
      // Doctor Cases Details Screen
      case Routes.doctorCasesDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const DoctorCasesDetails(),
        );
      // Home Resecpient Screen
      case Routes.homeResecption:
        return MaterialPageRoute(
          builder: (context) => const HomeResecpion(),
        );
      // Calls Resecpient Screen
      case Routes.callsReceptionScreen:
        return MaterialPageRoute(
          builder: (context) => const CallsResecption(),
        );
      // Add User Screen
      case Routes.addUser:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignUpCubit(getIt()),
            child: const AddUserScreen(),
          ),
        );
      //My profile Screen
      case Routes.myProfile:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ProfileCuibt(getIt()),
            child: const ProfileScreen(),
          ),
        );

      case Routes.homeDoctorScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeDoctorScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.callsDoctorScreen:
        return MaterialPageRoute(
          builder: (context) => const CallsDoctorScreen(),
        );

      case Routes.profileEmployee:
        final employee = settings.arguments as Employees;
        return MaterialPageRoute(
          builder: (context) => ProfileEmployeeScreen(
            employee: employee,
          ),
        );
// Error Message
      default:
        return null;
    }
  }
}
