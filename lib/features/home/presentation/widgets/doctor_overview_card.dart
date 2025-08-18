import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/features/home/presentation/widgets/doctor_stats_section.dart';
import 'package:medical_center_app/features/home/presentation/widgets/doctor_info_section.dart';

class DoctorOverviewCard extends StatelessWidget {
  const DoctorOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      padding: const EdgeInsets.all(8),
      child: const Row(
        spacing: 12,
        children: [
          // Doctor image
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(AppAssets.imagesDummyDoctorPic),
          ),

          // Doctor info
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                DoctorInfoSection(),
                DoctorStatsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

