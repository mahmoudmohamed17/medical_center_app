import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class BottomNavBarIconButton extends StatelessWidget {
  const BottomNavBarIconButton({
    super.key,
    required this.svgIcon,
    required this.isActive,
  });

  final String svgIcon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(
        svgIcon,
        height: 32,
        width: 32,
        colorFilter: ColorFilter.mode(
          isActive ? Colors.black : AppColors.secondaryColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
