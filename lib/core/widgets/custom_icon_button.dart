import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onTap,
    this.icon,
    this.svgIcon,
    this.height = 32,
    this.width = 32,
    this.padding = 4,
    this.iconColor = Colors.white,
  });

  final VoidCallback onTap;
  final IconData? icon;
  final String? svgIcon;
  final Color iconColor;
  final double height;
  final double width;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          shape: BoxShape.circle,
        ),
        height: height,
        width: width,
        padding: EdgeInsets.all(padding),
        child: svgIcon != null
            ? SvgPicture.asset(
                svgIcon!,
                colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
              )
            : Icon(icon, color: iconColor),
      ),
    );
  }
}
