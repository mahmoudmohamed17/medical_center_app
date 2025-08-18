import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class DoctorCardInfoBadge extends StatelessWidget {
  const DoctorCardInfoBadge({
    super.key,
    required this.icon,
    required this.text,
    this.spacing = 2,
  });
  final IconData icon;
  final String text;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: [
          Icon(icon, color: AppColors.primaryColor, size: 18),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w400,
              fontFamily: GoogleFonts.roboto.toString(),
            ),
          ),
        ],
      ),
    );
  }
}
