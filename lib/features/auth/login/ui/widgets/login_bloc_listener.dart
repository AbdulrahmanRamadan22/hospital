import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:hospital_mange/features/auth/login/logic/cubit/login_state.dart';
import '../../../../../core/theming/style.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: ColorsApp.mainGreen,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font14grey,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              textAlign: TextAlign.center,
              // textDirection: TextDirection.ltr,
              'سجل الاول يا محترم 😘',
              style: TextStyles.font26mainheavenly,
            ),
          ),
        ],
      ),
    );
  }
}
