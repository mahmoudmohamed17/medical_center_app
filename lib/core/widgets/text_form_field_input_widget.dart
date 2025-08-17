import 'package:flutter/material.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/widgets/custom_password_text_form_field.dart';
import 'package:medical_center_app/core/widgets/custom_text_form_field.dart';

class TextFormFieldInputWidget extends StatelessWidget {
  const TextFormFieldInputWidget({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.spacing = 12,
    this.forPassword = false,
  });

  final TextEditingController controller;
  final String label;
  final String hintText;
  final double spacing;
  final bool forPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppColors.primaryTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        forPassword
            ? CustomPasswordTextFormField(
                hintText: hintText,
                controller: controller,
                fillColore: AppColors.secondaryColor,
              )
            : CustomTextFormField(
                hintText: hintText,
                controller: controller,
                fillColore: AppColors.secondaryColor,
              ),
      ],
    );
  }
}
