import 'package:roman_web_portfolio/features/web/data/models/web_page.model.dart';
import 'package:roman_web_portfolio/features/web/data/repositories/iweb.repository.dart';

class WebPageViewModel {
  final IWebPageRepository webPageRepository;

  WebPageViewModel(this.webPageRepository);

  Future<WebPageModel> getWebPageData() async {
    var webPageData = await webPageRepository.getWebPageData();
    return webPageData;
  }
}