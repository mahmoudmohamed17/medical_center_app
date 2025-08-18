import 'package:flutter/material.dart';
import 'package:medical_center_app/features/home/presentation/widgets/home_doctors_list.dart';
import 'package:medical_center_app/features/home/presentation/widgets/home_scheduler_widget.dart';
import 'package:medical_center_app/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:medical_center_app/features/home/presentation/widgets/home_view_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: HomeViewAppBar(),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: HomeViewSearchBar(),
            ),
            SizedBox(height: 16),
            HomeSchedulerWidget(),
            SizedBox(height: 16),
            Expanded(child: HomeDoctorsList()),
          ],
        ),
      ),
    );
  }
}
