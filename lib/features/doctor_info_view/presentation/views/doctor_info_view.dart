import 'package:flutter/material.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_info_view_app_bar.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_info_view_card.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_profile_career_path_and_highlights.dart';

class DoctorInfoView extends StatelessWidget {
  const DoctorInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 24, left: 16),
                child: DoctorInfoViewAppBar(),
              ),
              const SizedBox(height: 34),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  children: const [
                    DoctorInfoViewCard(),
                    SizedBox(height: 34),
                    DoctorProfileCareerPathAndHighlights(),
                    SizedBox(height: 34),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
