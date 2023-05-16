import 'package:roman_web_portfolio/features/web/data/models/web_page.model.dart';
import 'package:roman_web_portfolio/features/web/data/repositories/iweb.repository.dart';
import 'package:roman_web_portfolio/styles/personal_portfolio_icons.dart';

class MockWebPageRepository implements IWebPageRepository {

  @override
  Future<WebPageModel> getWebPageData() {
    
    return Future.delayed(const Duration(seconds: 2), () {
      return WebPageModel(
        icon: PersonalPortfolioIcons.iconMap['web']!,
        title: "Visit\nMy Page!",
        subTitle: 'romanjustcodes.web.app',
        url: 'https://romanjustcodes.web.app/'
      );
    });
  }
}