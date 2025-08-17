import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/routing/routes.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => context.push(Routes.setPasswordView),
        style: const ButtonStyle(
          visualDensity: VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
        ),
        child: Text(
          AppStrings.forgetPassword,
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
