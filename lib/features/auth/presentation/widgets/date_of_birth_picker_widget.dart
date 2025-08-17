import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/utils/build_border.dart';
import 'package:medical_center_app/features/auth/data/managers/birth_date_cubit/birth_date_cubit.dart';

class DateOfBirthPickerWidget extends StatelessWidget {
  const DateOfBirthPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BirthDateCubit(),
      child: BlocBuilder<BirthDateCubit, String?>(
        builder: (context, state) {
          final controller = TextEditingController(
            text: state ?? 'DD / MM / YYYY',
          );
          
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(
                AppStrings.dateOfBirth,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextFormField(
                controller: controller,
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1930),
                    lastDate: DateTime(DateTime.now().year),
                  );
                  if (date != null && context.mounted) {
                    final result = '${date.day}/${date.month}/${date.year}';
                    context.read<BirthDateCubit>().updateDate(result);
                  }
                },
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                ),
                readOnly: true,
                decoration: InputDecoration(
                  hintText: state,
                  contentPadding: const EdgeInsets.all(16),
                  fillColor: AppColors.secondaryColor,
                  filled: true,
                  enabledBorder: buildBorder(),
                  focusedBorder: buildBorder(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
