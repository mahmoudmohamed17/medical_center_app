import 'package:flutter/material.dart';
import 'package:medical_center_app/core/constants/app_strings.dart';
import 'package:medical_center_app/core/widgets/text_form_field_input_widget.dart';
import 'package:medical_center_app/features/auth/presentation/widgets/date_of_birth_picker_widget.dart';

class SignupViewForm extends StatefulWidget {
  const SignupViewForm({super.key});

  @override
  State<SignupViewForm> createState() => _SignupViewFormState();
}

class _SignupViewFormState extends State<SignupViewForm> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _mobileNumberController;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _mobileNumberController = TextEditingController();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _mobileNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormFieldInputWidget(
          controller: _fullNameController,
          label: AppStrings.fullName,
          hintText: AppStrings.typeYourFullName,
        ),
        const SizedBox(height: 20),
        TextFormFieldInputWidget(
          controller: _emailController,
          label: AppStrings.email,
          hintText: AppStrings.typeYourEmail,
        ),
        const SizedBox(height: 20),
        TextFormFieldInputWidget(
          controller: _passwordController,
          label: AppStrings.password,
          hintText: AppStrings.typeYourPassword,
          forPassword: true,
        ),
        const SizedBox(height: 20),
        TextFormFieldInputWidget(
          controller: _mobileNumberController,
          label: AppStrings.mobileNumber,
          hintText: AppStrings.typeYourMobileNumber,
        ),
        const SizedBox(height: 20),
        const DateOfBirthPickerWidget(),
      ],
    );
  }
}
