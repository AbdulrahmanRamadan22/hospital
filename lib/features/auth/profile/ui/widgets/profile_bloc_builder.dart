// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_cubit.dart';
// import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_state.dart';
// import 'package:hospital_mange/features/auth/profile/ui/widgets/profile_body_view.dart';
// import 'package:redacted/redacted.dart';

// class ProfileBlocBuilder extends StatelessWidget {
//   const ProfileBlocBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProfileCuibt, ProfileState>(
//       builder: (context, state) {
//         // ignore: unused_label
//         buildWhen:
//         (previous, current) =>
//             current is Loading || current is Success || current is Error;

//         return state.maybeWhen(
//           loading: () => const ProfileBodyView().redacted(
//             context: context,
//             redact: true,
//             configuration: RedactedConfiguration(
//               animationDuration: const Duration(seconds: 20), //default
//             ),
//           ),
//           success: (profileResponse) => ProfileBodyView(
//             userModel: profileResponse,
//           ),
//           error: (error) => const Center(child: CircularProgressIndicator()),
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }
// }
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
