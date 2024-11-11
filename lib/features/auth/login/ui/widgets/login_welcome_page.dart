import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';

import '../../../../../core/theming/style.dart';

class LoginWelcomeScreen extends StatelessWidget {
  const LoginWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/welcome_page.png'),
        virticalspace(30),
        Text(
          'Welcome back !',
          style: TextStyles.font26mainheavenly,
        ),
        Text(
          'To Continue , Login Now',
          style: TextStyles.font14grey,
        ),
      ],
    );
  }
}
