import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';
import 'package:medical_center_app/core/utils/build_border.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.fillColore = Colors.white,
  });
  final String hintText;
  final TextEditingController controller;
  final Color fillColore;

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryColor,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '${widget.hintText} is required';
        } else {
          return null;
        }
      },
      obscureText: !_isVisible,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
          padding: EdgeInsets.zero,
          icon: Icon(
            _isVisible ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
            color: AppColors.primaryTextColor,
          ),
        ),
        contentPadding: const EdgeInsets.all(16),
        fillColor: widget.fillColore,
        filled: true,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
