
import 'package:roman_web_portfolio/features/twitter/data/models/twitter_page.model.dart';
import 'package:roman_web_portfolio/features/twitter/data/repositories/itwitterrepository.dart';
import 'package:roman_web_portfolio/styles/personal_portfolio_icons.dart';

class MockTwitterRepository implements ITwitterRepository {

  @override
  Future<TwitterPageModel> getTwitterPageData() {
    
    return Future.delayed(const Duration(seconds: 2), () {
      return TwitterPageModel(
        icon: PersonalPortfolioIcons.iconMap['twitter']!,
        title: 'Follow me',
        subTitle: 'on Twitter',
        handle: '@drcoderz',
        url: 'https://twitter.com/drcoderz'
      );
    });
  }
}