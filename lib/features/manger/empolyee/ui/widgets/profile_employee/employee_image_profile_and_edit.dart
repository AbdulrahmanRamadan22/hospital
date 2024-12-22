import 'package:flutter/material.dart';

class EmployeeImageProfile extends StatelessWidget {
  final String? image;

  const EmployeeImageProfile({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundImage: NetworkImage(image ?? ""),
    );
  }
}
