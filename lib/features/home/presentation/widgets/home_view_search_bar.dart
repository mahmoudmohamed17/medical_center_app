import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/features/home/presentation/widgets/home_view_search_field.dart';

class HomeViewSearchBar extends StatelessWidget {
  const HomeViewSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 16,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: [
                  SvgPicture.asset(
                    AppAssets.iconsStethoscope,
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    AppStrings.doctors,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: [
                  SvgPicture.asset(AppAssets.iconsHeart, height: 24, width: 24),
                  Text(
                    AppStrings.favorite,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Expanded(child: HomeViewSearchField()),
      ],
    );
  }
}
