import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/navigation/presentation/widgets/side_navigation_drawer_row.dart';
import 'package:roman_web_portfolio/features/navigation/presentation/providers/navigation_providers.dart';

class SideNavigationDrawer extends ConsumerWidget {
  const SideNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var navItems = ref.watch(navigationItemsViewModelProvider);
  
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            children: List.generate(navItems.length, (index) {
                return SideNavigationDrawerRow(
                  item: navItems[index]
                );
              }
            ).animate(
              interval: 100.ms
            ).slideX(
              begin: -0.5, end: 0,
              duration: 0.5.seconds,
              curve: Curves.easeInOut,
            ).fadeIn(
              duration: 0.5.seconds,
              curve: Curves.easeInOut
            ),
          ),
      ),
    );
  }
}