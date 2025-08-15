import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.actions});
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        actions != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: actions!.map((e) => e).toList(),
              )
            : Opacity(
                opacity: 0,
                child: IconButton(
                  onPressed: () {},
                  enableFeedback: false,
                  icon: Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
      ],
    );
  }
}
