import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hospital_mange/features/auth/add_user/logic/cubit/sign_up_state.dart';
import 'package:hospital_mange/features/auth/add_user/data/models/sign_up_requast_body.dart';
import 'package:hospital_mange/features/auth/add_user/data/repo/sign_up_repo.dart';
import 'package:meta/meta.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  final SignUpRepo _signUpRepo;
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  void emitSignUp() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.signUp(SignUpRequastBody(
      email: emailController.text,
      password: passwordController.text,
      birthdate: birthdateController.text,
      gender: genderController.text,
      name: "${firstName.text} ${lastName.text}",
      phone: phoneController.text,
      role: roleController.text,
      status: statusController.text,
      address: addressController.text,
      
    ));
    response.when(success: (signUpResponse) {
      emit(SignUpState.success(signUpResponse));
    }, failure: (error) {
      emit(SignUpState.error(error));
    });
  }
}
