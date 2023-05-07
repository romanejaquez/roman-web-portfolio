import 'package:roman_web_portfolio/features/twitter/data/models/twitter_page.model.dart';

abstract class ITwitterRepository {

  Future<TwitterPageModel> getTwitterPageData();
}