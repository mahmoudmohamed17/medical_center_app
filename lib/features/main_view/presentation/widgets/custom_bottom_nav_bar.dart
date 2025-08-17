import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_center_app/core/constants/app_assets.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/features/main_view/data/managers/bottom_nav_bar_cubit/botton_nav_bar_cubit.dart';
import 'package:medical_center_app/features/main_view/presentation/widgets/bottom_nav_bar_icon_button.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = [
      AppAssets.iconsHome,
      AppAssets.iconsChating,
      AppAssets.iconsSchedule,
      AppAssets.iconsUser,
    ];

    return BlocBuilder<BottomNavBarCubit, int>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(100)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(icons.length, (index) {
                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () =>
                        context.read<BottomNavBarCubit>().change(index),
                    customBorder: const CircleBorder(),
                    child: BottomNavBarIconButton(
                      svgIcon: icons[index],
                      isActive: index == state,
                    ),
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
