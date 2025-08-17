import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/widgets/custom_app_bar.dart';
import 'package:medical_center_app/core/widgets/custom_button.dart';
import 'package:medical_center_app/features/auth/presentation/widgets/already_have_an_account_widget.dart';
import 'package:medical_center_app/features/auth/presentation/widgets/signup_terms_of_use_widget.dart';
import 'package:medical_center_app/features/auth/presentation/widgets/signup_view_form.dart';
import 'package:medical_center_app/features/auth/presentation/widgets/social_auth_providers_widget.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          const CustomAppBar(title: AppStrings.newAccount),
          const SizedBox(height: 36),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: SignupViewForm(),
          ),
          const SizedBox(height: 18),
          const SignupTermsOfUseWidget(),
          const SizedBox(height: 4),
          CustomButton(
            onPressed: () {},
            text: AppStrings.signUp,
            btnColor: AppColors.primaryColor,
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            AppStrings.orSignUpWith,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          const SocialAuthProvidersWidget(),
          const SizedBox(height: 32),
          const AlreadyHaveAnAccountWidget(),
        ],
      ),
    );
  }
}
