import 'package:roman_web_portfolio/features/linkedin/data/models/linkedin_page.model.dart';
import 'package:roman_web_portfolio/features/linkedin/data/repositories/ilinkedin.repository.dart';
import 'package:roman_web_portfolio/styles/personal_portfolio_icons.dart';

class MockLinkedInRepository implements ILinkedInRepository {
  
  @override
  Future<LinkedInPageModel> getLinkedInPageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return LinkedInPageModel(
        icon: PersonalPortfolioIcons.iconMap['linkedin']!,
        title: "Let's\nConnect",
        subTitle: 'on LinkedIn',
        url: 'https://www.linkedin.com/in/roman-jaquez-8941a424/'
      );
    });
  }

}