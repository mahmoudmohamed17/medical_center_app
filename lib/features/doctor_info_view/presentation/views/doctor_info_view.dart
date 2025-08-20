import 'package:flutter/material.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_info_view_app_bar.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/widgets/doctor_info_view_card.dart';

class DoctorInfoView extends StatelessWidget {
  const DoctorInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 24, left: 16),
                child: DoctorInfoViewAppBar(),
              ),
              SizedBox(height: 38),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: DoctorInfoViewCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
