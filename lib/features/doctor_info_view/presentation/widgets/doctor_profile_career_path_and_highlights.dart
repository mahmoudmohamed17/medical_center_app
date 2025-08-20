import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class DoctorProfileCareerPathAndHighlights extends StatelessWidget {
  const DoctorProfileCareerPathAndHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 18,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: [
            Text(
              AppStrings.profile,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              AppStrings.lorem,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: [
            Text(
              AppStrings.careerPath,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              AppStrings.lorem,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: [
            Text(
              AppStrings.highlights,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              AppStrings.lorem,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
