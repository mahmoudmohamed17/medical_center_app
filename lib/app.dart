import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_center_app/core/routing/app_routing.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.leagueSpartanTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouting.router,
    );
  }
}
