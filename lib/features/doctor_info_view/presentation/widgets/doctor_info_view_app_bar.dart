import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/widgets/custom_app_bar.dart';
import 'package:medical_center_app/core/widgets/custom_icon_button.dart';

class DoctorInfoViewAppBar extends StatelessWidget {
  const DoctorInfoViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: AppStrings.doctorInfo,
      actions: [
        CustomIconButton(
          onTap: () {},
          svgIcon: AppAssets.iconsSearch,
          iconColor: AppColors.primaryColor,
          padding: 6,
        ),
        CustomIconButton(
          onTap: () {},
          svgIcon: AppAssets.iconsFilter,
          iconColor: AppColors.primaryColor,
          padding: 6,
        ),
      ],
    );
  }
}
