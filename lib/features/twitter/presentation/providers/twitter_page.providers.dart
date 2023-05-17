import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/twitter/data/repositories/itwitterrepository.dart';
import 'package:roman_web_portfolio/features/twitter/data/repositories/mock_twitterrepository.dart';
import 'package:roman_web_portfolio/features/twitter/data/repositories/twitterrepository.dart';
import 'package:roman_web_portfolio/features/twitter/presentation/viewmodels/twitterpageviewmodel.dart';

final twitterRepositoryProvider = Provider<ITwitterRepository>((ref) {
  //return MockTwitterRepository();
  return TwitterRepository(ref);
});

final twitterViewModelProvider = Provider<TwitterPageViewModel>((ref) {
  var repository = ref.read(twitterRepositoryProvider);
  return TwitterPageViewModel(repository);
});

final twitterProvider = FutureProvider((ref) {
  final twitterVM = ref.read(twitterViewModelProvider);
  return twitterVM.getTwitterData();
});