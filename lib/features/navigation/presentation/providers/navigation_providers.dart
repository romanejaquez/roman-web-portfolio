import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/navigation/data/models/left_navigation_item.dart';
import 'package:roman_web_portfolio/features/navigation/data/repositories/inavigation.repository.dart';
import 'package:roman_web_portfolio/features/navigation/data/repositories/mock_navigation.repository.dart';
import 'package:roman_web_portfolio/features/navigation/presentation/viewmodels/leftnavigation.viewmodel.dart';

final navigationRepositoryProvider = Provider<INavigationRepository>((ref) {
  return MockNavigationRepository();
});

final navigationItemsProvider = Provider<List<LeftNavigationItem>>((ref) {
  return ref.read(navigationRepositoryProvider).getDefaultNavItems();
});

final navigationItemsViewModelProvider = StateNotifierProvider<LeftNavigationViewModel, 
  List<LeftNavigationItem>>((ref) {
  var items = ref.read(navigationItemsProvider);
  return LeftNavigationViewModel(items, ref);
});