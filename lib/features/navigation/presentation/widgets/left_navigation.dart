import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/navigation/presentation/providers/navigation_providers.dart';
import 'package:roman_web_portfolio/features/navigation/presentation/widgets/left_navigation_item_tile.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';

class LeftNavigation extends ConsumerStatefulWidget {
  const LeftNavigation({super.key});

  @override
  ConsumerState<LeftNavigation> createState() => _LeftNavigationState();
}

class _LeftNavigationState extends ConsumerState<LeftNavigation> {

  @override 
  void initState() {
    super.initState();

    ref.read(webLocalStorageProvider).initLocalStorage().then((value) {
      ref.read(navigationItemsViewModelProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {

    var navItems = ref.watch(navigationItemsViewModelProvider);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.25),
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: List.generate(navItems.length, (index) {
            return LeftNavigationItemTile(
              item: navItems[index]
            );
          }
        ).animate(
          interval: 100.ms
        ).slideY(
          begin: 1, end: 0,
          duration: 0.5.seconds,
          curve: Curves.easeInOut,
        ).fadeIn(
          duration: 0.5.seconds,
          curve: Curves.easeInOut
        ),
      )

    );
  } 
}