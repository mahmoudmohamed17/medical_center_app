import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/utils/context_extension.dart';
import 'package:medical_center_app/features/home/presentation/widgets/doctor_card_action_buttons.dart';

class DoctorCardItem extends StatelessWidget {
  const DoctorCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        spacing: 12,
        children: [
          // Doctor image
          const CircleAvatar(
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
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 16,
                  ),
                  child: SizedBox(
                    width: context.width * 0.52,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Dr. Alexander Bennett, Ph.D.',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Dermato-Genetics',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const DoctorCardActionButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
