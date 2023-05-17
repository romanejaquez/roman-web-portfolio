import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/splash/presentation/viewmodels/splash_page.viewmodel.dart';

final splashPageViewModelProvider = Provider((ref) {
  return SplashPageViewModel(ref);
});

final splashPageFutureProvider = FutureProvider<bool>((ref) {
  var splashVM = ref.read(splashPageViewModelProvider);
  return splashVM.lazyloadPages();
});