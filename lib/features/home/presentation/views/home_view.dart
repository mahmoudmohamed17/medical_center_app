import 'package:flutter/material.dart';
import 'package:medical_center_app/features/home/presentation/widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(children: [HomeViewAppBar()]),
      ),
    );
  }
}
