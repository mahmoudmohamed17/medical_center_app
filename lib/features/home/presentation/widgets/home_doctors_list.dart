import 'package:flutter/material.dart';
import 'package:medical_center_app/features/home/presentation/widgets/doctor_overview_card.dart';

class HomeDoctorsList extends StatelessWidget {
  const HomeDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: 7,
      itemBuilder: (context, index) =>
          InkWell(onTap: () {}, child: const DoctorOverviewCard()),
    );
  }
}
