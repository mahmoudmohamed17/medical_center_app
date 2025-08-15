import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.btnColor,
    required this.textStyle,
  });
  final VoidCallback onPressed;
  final String text;
  final Color btnColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.maximumDensity,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
