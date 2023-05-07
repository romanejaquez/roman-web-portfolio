import 'package:roman_web_portfolio/features/linkedin/data/models/linkedin_page.model.dart';

abstract class ILinkedInRepository {

  Future<LinkedInPageModel> getLinkedInPageData();
}