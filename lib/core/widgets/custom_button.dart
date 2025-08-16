import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.btnColor,
    required this.textStyle,
    this.isShapeCircular = false,
  });
  final VoidCallback onPressed;
  final String text;
  final Color btnColor;
  final TextStyle textStyle;
  final bool isShapeCircular;

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
        shape: isShapeCircular ? const CircleBorder() : null,
      ),
      child: Text(text, style: textStyle),
    );
  }
}
