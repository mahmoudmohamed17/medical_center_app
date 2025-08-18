import 'package:flutter/material.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/utils/context_extension.dart';

class HomeSchedulerWidget extends StatelessWidget {
  const HomeSchedulerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      color: AppColors.secondaryColor,
      width: context.width,
      height: context.height * 0.20,
      child: const Text(
        'This would be implemented later',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
