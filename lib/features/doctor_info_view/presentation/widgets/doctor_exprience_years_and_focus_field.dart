import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class DoctorExprienceYearsAndFocusField extends StatelessWidget {
  const DoctorExprienceYearsAndFocusField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        // Doctor years of experience
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(100)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 6,
            children: [
              // Award icon
              Container(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(6),
                child: SvgPicture.asset(
                  AppAssets.iconsAward,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    AppColors.primaryColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              // Experience years
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '15 years',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.roboto.toString(),
                    ),
                  ),
                  const Text(
                    'experience',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Doctor focus field
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(18)),
          ),
          padding: const EdgeInsets.all(8),
          child: const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Focus: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      'The impact of hormonal imbalances on skin conditions, specializing in acne, hirsutism, and other skin disorders.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
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
