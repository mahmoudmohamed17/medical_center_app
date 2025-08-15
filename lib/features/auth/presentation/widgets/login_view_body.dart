import 'package:flutter/material.dart';
import 'package:medical_center_app/core/widgets/custom_app_bar.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(title: 'Hello world'),
        SizedBox(height: 100),
        Text('Hello world'),
      ],
    );
  }
}
