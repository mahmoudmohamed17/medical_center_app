import 'dart:ui';

extension ColorExtension on Color {
  Color copyWith(Color color) => color;
  Color getWithOpacity(double opacity) {
    int newAlpha = (opacity * 255).toInt();
    return withAlpha(newAlpha);
  }
}
