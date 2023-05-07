import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';

class PageColor extends ConsumerWidget {
  const PageColor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var pageGradient = ref.watch(pageColorProvider);

    return AnimatedContainer(
      duration: 1.seconds,
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        gradient: pageGradient
      )
    );
  }
}