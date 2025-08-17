import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/widgets/custom_icon_button.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(AppAssets.imagesDummyUserPic),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.hiWelcomeBack,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Jhon Doe',
                  style: TextStyle(
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            CustomIconButton(
              onTap: () {},
              svgIcon: AppAssets.iconsBell,
              iconColor: Colors.black,
            ),
            CustomIconButton(
              onTap: () {},
              svgIcon: AppAssets.iconsSettings,
              iconColor: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
