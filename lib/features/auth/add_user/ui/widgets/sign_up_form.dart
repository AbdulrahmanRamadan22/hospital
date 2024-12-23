import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/features/auth/add_user/logic/cubit/sign_up_cubit.dart';
import '../../../../../../core/helper/app_regex.dart';
import '../../../../../../core/helper/sixbox.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/style.dart';
import '../../../../../../core/widget/app_text_form_field.dart';
import 'drop_down_button_form_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          // first name yaaa negim
          AppTextFormField(
            controller: context.read<SignUpCubit>().firstName,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
            hintText: 'First name',
            hintStyle: TextStyles.font14grey,
            prefixIcon: Icon(
              Icons.account_circle_outlined,
              size: 25,
              color: ColorsApp.mainColor,
            ), 
          ),
          virticalspace(15),
          // last name yaaa negim
          AppTextFormField(
            controller: context.read<SignUpCubit>().lastName,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
            hintText: 'Last name',
            hintStyle: TextStyles.font14grey,
            prefixIcon: Icon(
              Icons.account_circle_outlined,
              size: 25,
              color: ColorsApp.mainColor,
            ),
          ),
          virticalspace(15),
          // gender yaaa negim
          DropDownFormField(
            controller: context.read<SignUpCubit>().genderController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your gender';
              }
              return null;
            },
            onChanged: (value) {
              context.read<SignUpCubit>().genderController.text = value!;
            },
            hinttext: 'Gender',
            prefixicon: Icon(
              Icons.transgender_rounded,
              color: ColorsApp.mainColor,
            ),
            options: const [
              'male',
              'female',
            ],
          ),
          virticalspace(15),
          // specialist yaaa negim
          DropDownFormField(
            controller: context.read<SignUpCubit>().roleController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your specialist';
              }
              return null;
            },
            onChanged: (value) {
              context.read<SignUpCubit>().roleController.text = value!;
            },
            hinttext: 'Specialist',
            prefixicon: Icon(
              Icons.local_hospital_outlined,
              color: ColorsApp.mainColor,
            ),
            options: const [
              'Doctor',
              'Manager',
              'Admin',
              'Receptionist',
            ],
          ),
          virticalspace(15),
          // date yaaa negim
          AppTextFormField(
            controller: context.read<SignUpCubit>().birthdateController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isDateValid(value)) {
                return 'Enter date in YYYY-MM-DD format';
              }
              return null;
            },
            keyboardType: TextInputType.number,
            hintText: 'Date of birth',
            hintStyle: TextStyles.font14grey,
            prefixIcon: Icon(
              Icons.date_range,
              size: 25,
              color: ColorsApp.mainColor,
            ),
          ),
          virticalspace(15),
          // statues yaaa negim
          DropDownFormField(
            controller: context.read<SignUpCubit>().statusController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your statues';
              }
              return null;
            },
            onChanged: (value) {
              context.read<SignUpCubit>().statusController.text = value!;
            },
            hinttext: 'Statues',
            prefixicon: Icon(
              Icons.favorite_border,
              color: ColorsApp.mainColor,
            ),
            options: const [
              'single',
              'married',
            ],
          ),
          virticalspace(15),
          // adress yaaa negim
          AppTextFormField(
              controller: context.read<SignUpCubit>().addressController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your adress';
                }
                return null;
              },
              hintText: 'Address',
              hintStyle: TextStyles.font14grey,
              prefixIcon: Icon(
                Icons.location_on_outlined,
                size: 25,
                color: ColorsApp.mainColor,
              )),
          virticalspace(15),
          // phone yaaa negim
          AppTextFormField(
              controller: context.read<SignUpCubit>().phoneController,
              keyboardType: TextInputType.number,
              hintText: 'Phone number',
              hintStyle: TextStyles.font14grey,
              prefixIcon: Icon(
                Icons.phone_outlined,
                size: 25,
                color: ColorsApp.mainColor,
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'Please enter a valid phone number';
                }
                return null;
              }),
          virticalspace(15),
          // email yaaa negim
          AppTextFormField(
            controller: context.read<SignUpCubit>().emailController,
            hintText: 'E-mail',
            hintStyle: TextStyles.font14grey,
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
          ),
          virticalspace(15),
          // password yaaa negim
          AppTextFormField(
            controller: context.read<SignUpCubit>().passwordController,
            hintText: "Password",
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
                  !AppRegex.hasNumber(value) ) {
                return "Please enter a valid password";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
