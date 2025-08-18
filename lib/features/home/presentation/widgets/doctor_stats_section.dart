import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_center_app/features/home/presentation/widgets/custom_doctor_card_heart_button.dart';
import 'package:medical_center_app/features/home/presentation/widgets/doctor_card_info_badge.dart';
import 'package:medical_center_app/features/home/presentation/widgets/doctor_card_question_mark_button.dart';

class DoctorStatsSection extends StatelessWidget {
  const DoctorStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 4,
          children: [
            DoctorCardInfoBadge(icon: Icons.star_outline, text: '4.5'),
            DoctorCardInfoBadge(
              icon: FontAwesomeIcons.commentDots,
              text: '60',
              spacing: 4,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 4,
          children: [
            DoctorCardQuestionMarkButton(),
            CustomDoctorCardHearButton(),
          ],
        ),
      ],
    );
  }
}
