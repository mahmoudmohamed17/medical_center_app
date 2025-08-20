import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_exprience_years_and_focus_field.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_info_card_action_buttons.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_name_and_speciality.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_rating_reviews_and_working_time.dart';

class DoctorInfoViewCard extends StatelessWidget {
  const DoctorInfoViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(18)),
      ),
      padding: const EdgeInsets.all(16),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(AppAssets.imagesDummyDoctorPic),
              ),
              Expanded(child: DoctorExprienceYearsAndFocusField()),
            ],
          ),
          SizedBox(height: 16),
          DoctorNameAndSpeciality(),
          SizedBox(height: 12),
          DoctorRatingReviewsAndWorkingTime(),
          SizedBox(height: 12),
          DoctorInfoCardActionButtons(),
        ],
      ),
    );
  }
}
