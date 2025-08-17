import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class SignupTermsOfUseWidget extends StatelessWidget {
  const SignupTermsOfUseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          const TextSpan(
            text: 'By continuing, you agree to\n',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          TextSpan(
            text: 'Terms of Use ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.primaryColor,
            ),
          ),
          const TextSpan(
            text: 'and ',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          TextSpan(
            text: '${AppStrings.privacyPolicy}.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
