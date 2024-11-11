import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/constants.dart';
import 'package:hospital_mange/core/helper/shared_pref_helper.dart';
import 'package:hospital_mange/features/auth/login/data/models/login_request_body.dart';
import 'package:hospital_mange/features/auth/login/data/models/login_response.dart';
import 'package:hospital_mange/features/auth/login/data/repo/login_repo.dart';
import 'package:hospital_mange/features/auth/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void emitLogin() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    response.when(success: (loginResponse) async {
      await saveUserData(loginResponse);

      SharedPrefValues.token =
          await SharedPrefHelper.getSecuredString(key: SharedPrefKeys.token);

      SharedPrefValues.role =
          await SharedPrefHelper.getData(key: SharedPrefKeys.role);

      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.failure.message.toString()));
      // emit(LoginState.error(
      //   error: error.failure.message.toString(),
      // ));
    });
  }

  Future<void> saveUserData(LoginResponse loginResponse) async {
    SharedPrefHelper.saveSecuredString(
        key: SharedPrefKeys.token,
        value: loginResponse.token ?? "Not Found Token");

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.name, value: loginResponse.employee?.name);

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.role, value: loginResponse.employee?.role);

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.image, value: loginResponse.employee?.secureUrl);

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.address, value: loginResponse.employee?.address);

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.birthdate,
        value: loginResponse.employee?.birthdate);

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.email, value: loginResponse.employee?.email);

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.phone, value: loginResponse.employee?.phone);

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.status, value: loginResponse.employee?.status);

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.gender, value: loginResponse.employee?.gender);
  }
}
