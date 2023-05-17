import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/welcome/data/repositories/iwelcome.repository.dart';
import 'package:roman_web_portfolio/features/welcome/data/repositories/mockwelcome.repository.dart';
import 'package:roman_web_portfolio/features/welcome/data/repositories/welcome.repository.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/viewmodels/greetings_label.viewmodel.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/viewmodels/welcome.viewmodel.dart';

final greetingsRawListProvider = StateProvider<List<String>>((ref) {
  return [];
});

final greetingsViewModelProvider = StateNotifierProvider<GreetingsViewModel, String>((ref) {
  var greetings = ref.watch(greetingsRawListProvider);
  return GreetingsViewModel(greetings.first, greetings);
});


final welcomeRepositoryProvider = Provider<IWelcomeRepository>((ref) {
  //return MockWelcomeRepository();
  return WelcomeRepository(ref);
});


final welcomeViewModelProvider = Provider<WelcomePageViewModel>((ref) {
  var repository = ref.read(welcomeRepositoryProvider);
  return WelcomePageViewModel(repository, ref);
});

final welcomeProvider = FutureProvider((ref) {
  final welcomeVM = ref.read(welcomeViewModelProvider);
  return welcomeVM.getWelcomePageData();
});

