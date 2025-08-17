import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/widgets/text_form_field_input_widget.dart';

class SetPasswordViewForm extends StatefulWidget {
  const SetPasswordViewForm({super.key});

  @override
  State<SetPasswordViewForm> createState() => _SetPasswordViewFormState();
}

class _SetPasswordViewFormState extends State<SetPasswordViewForm> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormFieldInputWidget(
          controller: _passwordController,
          label: AppStrings.password,
          hintText: AppStrings.typeYourPassword,
          forPassword: true,
        ),
        const SizedBox(height: 20),
        TextFormFieldInputWidget(
          controller: _confirmPasswordController,
          label: AppStrings.confirmPassword,
          hintText: AppStrings.typeYourPassword,
          forPassword: true,
        ),
      ],
    );
  }
}
