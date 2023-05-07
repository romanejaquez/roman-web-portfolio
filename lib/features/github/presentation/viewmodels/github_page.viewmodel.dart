import 'package:roman_web_portfolio/features/github/data/models/github_page.model.dart';
import 'package:roman_web_portfolio/features/github/data/repositories/igithub.repository.dart';

class GithubPageViewModel {
  final IGithubRepository githubRepository;

  GithubPageViewModel(this.githubRepository);

  Future<GithubPageModel> getGithubPageData() async {
    var githubPageData = await githubRepository.getGithubPageData();
    return githubPageData;
  }
}