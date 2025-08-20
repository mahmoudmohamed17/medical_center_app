import 'package:flutter/material.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class CustomAddToFavButton extends StatefulWidget {
  const CustomAddToFavButton({super.key});

  @override
  State<CustomAddToFavButton> createState() => _CustomAddToFavButtonState();
}

class _CustomAddToFavButtonState extends State<CustomAddToFavButton> {
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
            padding: const EdgeInsets.all(2.0),
            child: Icon(
              _isTapped ? Icons.star : Icons.star_outline,
              color: AppColors.primaryColor,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
