import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/widgets/custom_icon_button.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/custom_add_to_fav_button.dart';
import 'package:medical_center_app/features/home/presentation/widgets/custom_doctor_card_heart_button.dart';

class DoctorInfoCardActionButtons extends StatelessWidget {
  const DoctorInfoCardActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(100)),
              ),
              padding: const EdgeInsets.all(8),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 6,
                children: [
                  Icon(Icons.calendar_month, color: Colors.white, size: 20),
                  Text(
                    AppStrings.schedule,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 4,
          children: [
            CustomIconButton(
              onTap: () {},
              svgIcon: AppAssets.iconsQuestionMark,
              btnColor: Colors.white,
              iconColor: AppColors.primaryColor,
              height: 28,
              width: 28,
              padding: 6,
            ),
            const CustomAddToFavButton(),
            const CustomDoctorCardHeartButton(),
          ],
        ),
      ],
    );
  }
}
