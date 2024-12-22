import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hospital_mange/core/networking/api_factory.dart';
import 'package:hospital_mange/features/auth/add_user/data/apis/sign_up_services.dart';
import 'package:hospital_mange/features/auth/add_user/data/repo/sign_up_repo.dart';
import 'package:hospital_mange/features/auth/login/data/apis/login_api_services.dart';
import 'package:hospital_mange/features/auth/login/data/repo/login_repo.dart';
import 'package:hospital_mange/features/auth/profile/data/apis/profile_api_services.dart';
import 'package:hospital_mange/features/auth/profile/data/repo/profile_repo.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_cubit.dart';
import 'package:hospital_mange/features/manger/empolyee/data/apis/employee_api_services.dart';
import 'package:hospital_mange/features/manger/empolyee/data/repo/employee_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //setupGetIt "main" متنساش تحطها في
  // dio and ApiServices
  Dio dio = DioFactory.getDio(); // يتعمل مره واحده
  getIt.registerLazySingleton<LoginApiServices>(() => LoginApiServices(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // sinup
  getIt
      .registerLazySingleton<SignUpApisServices>(() => SignUpApisServices(dio));

  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));

  getIt
      .registerLazySingleton<ProfileApiServices>(() => ProfileApiServices(dio));

  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getIt()));

  //employee
  getIt.registerLazySingleton<EmployeeApiServices>(
      () => EmployeeApiServices(dio));

  getIt.registerLazySingleton<EmployeeRepo>(() => EmployeeRepo(getIt()));
}
