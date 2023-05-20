import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:roman_web_portfolio/helpers/utils.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: IconButton(
            onPressed: () {
              Utils.mainScaffold.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu, color: Colors.white, size: 30)),
        ).animate()
        .scaleXY(
          begin: 0, end: 1,
          duration: 0.5.seconds,
          curve: Curves.easeInOut,
          alignment: Alignment.center,
        ).fadeIn(
          duration: 0.5.seconds,
          curve: Curves.easeInOut,
        ),
      )
    );
  }
}