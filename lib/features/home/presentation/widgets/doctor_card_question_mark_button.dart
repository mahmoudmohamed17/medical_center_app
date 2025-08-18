import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_center_app/core/theme/app_colors.dart';

class DoctorCardQuestionMarkButton extends StatefulWidget {
  const DoctorCardQuestionMarkButton({super.key});

  @override
  State<DoctorCardQuestionMarkButton> createState() =>
      _DoctorCardQuestionMarkButtonState();
}

class _DoctorCardQuestionMarkButtonState
    extends State<DoctorCardQuestionMarkButton> {
  bool _isTapped = false;

  OverlayEntry? _overlayEntry;
  final _layerLink = LayerLink();

  void _showOveraly(BuildContext context) {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return CompositedTransformFollower(
          link: _layerLink,
          child: Positioned(
            right: 150,
            bottom: 150,
            child: Material(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Container(
                color: Colors.black,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello World!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideOverlay(BuildContext context) {
    Overlay.of(context).deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(6.0),
          child: Icon(
            FontAwesomeIcons.question,
            color: AppColors.primaryColor,
            size: 18,
          ),
        ),
      ),
    );
  }
}
