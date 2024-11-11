import 'package:flutter/widgets.dart';
import 'package:hospital_mange/core/di/dependancy_ingection.dart';
import 'package:hospital_mange/core/helper/shared_pref_helper.dart';
import 'package:hospital_mange/hospital_mangement.dart';
import 'package:hospital_mange/core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper.init();
  setupGetIt();
  runApp(
    HospitalManagement(
      appRouter: AppRouter(),
    ),
  );
}
