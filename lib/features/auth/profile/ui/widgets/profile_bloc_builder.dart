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
