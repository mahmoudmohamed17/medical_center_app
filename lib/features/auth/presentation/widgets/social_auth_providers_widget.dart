import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/widgets/custom_icon_button.dart';
import 'package:medical_center_app/features/auth/data/models/auth_provider_model.dart';

class SocialAuthProvidersWidget extends StatelessWidget {
  const SocialAuthProvidersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final providers = [
      AuthProviderModel(onTap: () {}, svgIcon: AppAssets.iconsGoogle),
      AuthProviderModel(onTap: () {}, svgIcon: AppAssets.iconsFacebook),
      AuthProviderModel(onTap: () {}, svgIcon: AppAssets.iconsFingerprint),
    ];

    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: providers
          .map(
            (item) => CustomIconButton(
              onTap: item.onTap,
              svgIcon: item.svgIcon,
              iconColor: AppColors.primaryColor,
              height: 50,
              width: 50,
              padding: 12,
            ),
          )
          .toList(),
    );
  }
}
