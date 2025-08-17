import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/widgets/custom_app_bar.dart';
import 'package:medical_center_app/core/widgets/custom_button.dart';
import 'package:medical_center_app/features/auth/presentation/widgets/set_password_view_form.dart';

class SetPasswordViewBody extends StatelessWidget {
  const SetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          const CustomAppBar(title: AppStrings.setPassword),
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              AppStrings.pleaseCreateStrongPassword,
              style: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 36),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: SetPasswordViewForm(),
          ),
          const SizedBox(height: 42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(
                onPressed: () {},
                text: AppStrings.createNewPassword,
                btnColor: AppColors.primaryColor,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
