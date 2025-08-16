import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/widgets/custom_password_text_form_field.dart';
import 'package:medical_center_app/core/widgets/custom_text_form_field.dart';

class LoginViewForm extends StatelessWidget {
  const LoginViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.email,
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 12),
        CustomTextFormField(
          hintText: AppStrings.typeYourEmail,
          controller: TextEditingController(),
          fillColore: AppColors.secondaryColor,
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.password,
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 12),
        CustomPasswordTextFormField(
          hintText: AppStrings.typeYourPassword,
          controller: TextEditingController(),
          fillColore: AppColors.secondaryColor,
        ),
      ],
    );
  }
}
