import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/web/data/repositories/iweb.repository.dart';
import 'package:roman_web_portfolio/features/web/data/repositories/mock_web.repository.dart';
import 'package:roman_web_portfolio/features/web/data/repositories/web.repository.dart';
import 'package:roman_web_portfolio/features/web/presentation/viewmodels/web_page.viewmodel.dart';

final webRepositoryProvider = Provider<IWebPageRepository>((ref) {
  //return MockWebPageRepository();
  return WebPageRepository(ref);
});

final webPageViewModelProvider = Provider<WebPageViewModel>((ref) {
  var repository = ref.read(webRepositoryProvider);
  return WebPageViewModel(repository);
});

final webpageProvider = FutureProvider((ref) {
  final webVM = ref.read(webPageViewModelProvider);
  return webVM.getWebPageData();
});