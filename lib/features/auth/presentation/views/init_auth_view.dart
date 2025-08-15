import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';

class InitAuthView extends StatelessWidget {
  const InitAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(AppAssets.imagesSplashBlue)],
        ),
      ),
    );
  }
}
