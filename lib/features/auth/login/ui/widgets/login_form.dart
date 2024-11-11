import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/features/auth/login/logic/cubit/login_cubit.dart';

import '../../../../../core/helper/app_regex.dart';
import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widget/app_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            prefixIcon: Icon(
              Icons.email_outlined,
              size: 25,
              color: ColorsApp.mainColor,
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            hintText: 'Email',
          ),
          virticalspace(20),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintStyle: TextStyles.font14grey,
            prefixIcon: Icon(
              Icons.lock_outline,
              size: 25,
              color: ColorsApp.mainColor,
            ),
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                size: 25,
                color: ColorsApp.mainColor,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.hasMinLength(value) ||
                  !AppRegex.hasUpperCase(value) ||
                  !AppRegex.hasLowerCase(value) ||
                  !AppRegex.hasNumber(value) 
                  ) {
                return "Please enter a valid password";
              }
              return null;
            },
            hintText: 'Password',
          ),
        ],
      ),
    );
  }
}
