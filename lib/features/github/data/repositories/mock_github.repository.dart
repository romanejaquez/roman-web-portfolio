import 'package:roman_web_portfolio/features/github/data/models/github_page.model.dart';
import 'package:roman_web_portfolio/features/github/data/repositories/igithub.repository.dart';
import 'package:roman_web_portfolio/styles/personal_portfolio_icons.dart';

class MockGithubRepository implements IGithubRepository {

  @override
  Future<GithubPageModel> getGithubPageData() {
    
    return Future.delayed(const Duration(seconds: 2), () {
      return GithubPageModel(
        icon: PersonalPortfolioIcons.iconMap['github']!,
        title: 'Check out\nMy Repos',
        subTitle: 'on Github',
        url: 'https://github.com/romanejaquez'
      );
    });
  }
}