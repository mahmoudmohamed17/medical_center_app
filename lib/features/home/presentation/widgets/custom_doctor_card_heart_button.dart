import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class CustomDoctorCardHearButton extends StatefulWidget {
  const CustomDoctorCardHearButton({super.key});

  @override
  State<CustomDoctorCardHearButton> createState() =>
      _CustomDoctorCardHearButtonState();
}

class _CustomDoctorCardHearButtonState
    extends State<CustomDoctorCardHearButton> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              _isTapped = !_isTapped;
            });
          },
          customBorder: const CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              _isTapped ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
              color: AppColors.primaryColor,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
