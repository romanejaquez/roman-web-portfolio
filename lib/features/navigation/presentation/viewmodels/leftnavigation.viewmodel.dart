import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:roman_web_portfolio/features/navigation/data/models/left_navigation_item.dart';
import 'package:roman_web_portfolio/helpers/utils.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';
import 'package:roman_web_portfolio/styles/colors.dart';

class LeftNavigationViewModel extends StateNotifier<List<LeftNavigationItem>> {

  final Ref ref;
  LeftNavigationViewModel(List<LeftNavigationItem> items, this.ref) : super([]) {
    state = items;

    var item = state.first;
    selectNavItem(item);
  }

  void selectNavItem(LeftNavigationItem item) {
    
    if (item.route.isNotEmpty) {
      GoRouter.of(Utils.tabNav.currentContext!).go(item.route);
    }

    ref.read(pageColorProvider.notifier).state = PersonalPortfolioColors.pageColor[item.route]!;
    ref.read(bgPageRouteProvider.notifier).state = item.route;

    state = [
      for (var element in state)
       element.copyWith(isSelected: item == element)
    ];
  }
}