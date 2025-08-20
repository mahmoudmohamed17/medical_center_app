import 'package:flutter/material.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/utils/context_extension.dart';

class DoctorNameAndSpeciality extends StatelessWidget {
  const DoctorNameAndSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      padding: const EdgeInsets.all(6),
      width: context.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Dr. Alexander Bennett, Ph.D.',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Dermato-Genetics',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
