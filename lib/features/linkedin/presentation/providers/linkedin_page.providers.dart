import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/linkedin/data/repositories/ilinkedin.repository.dart';
import 'package:roman_web_portfolio/features/linkedin/data/repositories/linkedin.repository.dart';
import 'package:roman_web_portfolio/features/linkedin/data/repositories/mock_linkedin.repository.dart';
import 'package:roman_web_portfolio/features/linkedin/presentation/viewmodels/linkedin_page.viewmodel.dart';

final linkedInRpositoryProvider = Provider<ILinkedInRepository>((ref) {
  return LinkedInRepository(ref);
  //return MockLinkedInRepository();
});

final linkedInViewModelProvider = Provider<LinkedInPageViewModel>((ref) {
  var repository = ref.read(linkedInRpositoryProvider);
  return LinkedInPageViewModel(repository);
});

final linkedInProvider = FutureProvider((ref) {
  final linkedInVM = ref.read(linkedInViewModelProvider);
  return linkedInVM.getLinkedInPageData();
});