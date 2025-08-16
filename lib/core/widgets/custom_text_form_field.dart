import 'package:flutter/material.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/utils/build_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.fillColore = Colors.white,
  });
  final String hintText;
  final TextEditingController controller;
  final Color fillColore;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryColor,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is required';
        } else {
          return null;
        }
      },
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor,
        ),
        contentPadding: const EdgeInsets.all(16),
        fillColor: fillColore,
        filled: true,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
