import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class HomeViewSearchField extends StatelessWidget {
  const HomeViewSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              AppAssets.iconsFilter,
              height: 18,
              width: 18,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Material(
            color: Colors.transparent,
            child: SvgPicture.asset(
              AppAssets.iconsSearch,
              height: 28,
              width: 28,
            ),
          ),
        ),
        fillColor: AppColors.secondaryColor,
        filled: true,
        contentPadding: const EdgeInsets.all(2),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
