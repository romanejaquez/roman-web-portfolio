import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/github/data/repositories/github.repository.dart';
import 'package:roman_web_portfolio/features/github/data/repositories/igithub.repository.dart';
import 'package:roman_web_portfolio/features/github/data/repositories/mock_github.repository.dart';
import 'package:roman_web_portfolio/features/github/presentation/viewmodels/github_page.viewmodel.dart';

final githubRepositoryProvider = Provider<IGithubRepository>((ref) {
  return GithubRepository(ref);
  //return MockGithubRepository();
});

final githubViewModelProvider = Provider<GithubPageViewModel>((ref) {
  var repository = ref.read(githubRepositoryProvider);
  return GithubPageViewModel(repository);
});

final githubProvider = FutureProvider((ref) {
  final githubVM = ref.read(githubViewModelProvider);
  return githubVM.getGithubPageData();
});