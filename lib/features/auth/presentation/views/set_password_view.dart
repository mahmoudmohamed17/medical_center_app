import 'package:flutter/material.dart';
import 'package:medical_center_app/features/auth/presentation/widgets/set_password_view_body.dart';

class SetPasswordView extends StatelessWidget {
  const SetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SetPasswordViewBody(),
        ),
      ),
    );
  }
}
