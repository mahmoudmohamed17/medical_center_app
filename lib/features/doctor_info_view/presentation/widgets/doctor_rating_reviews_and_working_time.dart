import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class DoctorRatingReviewsAndWorkingTime extends StatelessWidget {
  const DoctorRatingReviewsAndWorkingTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 4,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          padding: const EdgeInsets.all(6),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [
              Icon(Icons.star_outline, color: AppColors.primaryColor, size: 20),
              Text(
                '4.5',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.robotoTextTheme.toString(),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          padding: const EdgeInsets.all(6),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 6,
            children: [
              Icon(
                FontAwesomeIcons.commentDots,
                color: AppColors.primaryColor,
                size: 20,
              ),
              Text(
                '60',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.robotoTextTheme.toString(),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 6,
              children: [
                SvgPicture.asset(AppAssets.iconsAlarm, height: 20, width: 20),
                Text(
                  'Mon-Sat / 9:00AM - 5:00PM',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.robotoTextTheme.toString(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
