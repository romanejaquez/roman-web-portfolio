import 'package:roman_web_portfolio/features/web/data/models/web_page.model.dart';

abstract class IWebPageRepository {

  Future<WebPageModel> getWebPageData();
}