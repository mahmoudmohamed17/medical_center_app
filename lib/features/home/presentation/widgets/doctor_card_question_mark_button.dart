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
    extends State<DoctorCardQuestionMarkButton>
    with SingleTickerProviderStateMixin {
  OverlayEntry? _overlayEntry;
  final _layerLink = LayerLink();
  bool _isOverlayVisible = false;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _hideOverlay();
    super.dispose();
  }

  void _showOverlay() {
    if (_isOverlayVisible) return;

    _overlayEntry = OverlayEntry(builder: (context) => _buildOverlay());
    Overlay.of(context).insert(_overlayEntry!);
    _fadeController.forward();
    setState(() {
      _isOverlayVisible = true;
    });
  }

  void _hideOverlay() {
    if (!_isOverlayVisible) return;
    _fadeController.reverse().then((_) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      if (mounted) {
        setState(() {
          _isOverlayVisible = false;
        });
      }
    });
  }

  void _toggleOverylay() {
    if (_isOverlayVisible) {
      _hideOverlay();
    } else {
      _showOverlay();
    }
  }

  Widget _buildOverlay() {
    return CompositedTransformFollower(
      link: _layerLink,
      offset: const Offset(-200, -35),
      child: AnimatedBuilder(
        animation: _fadeController,
        builder: (context, child) => FadeTransition(
          opacity: _fadeAnimation,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Material(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 10,
                        spreadRadius: 0.5,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hello World!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleOverylay,
        behavior: HitTestBehavior.translucent,
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
