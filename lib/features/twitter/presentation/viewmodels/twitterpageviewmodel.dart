import 'package:roman_web_portfolio/features/twitter/data/models/twitter_page.model.dart';
import 'package:roman_web_portfolio/features/twitter/data/repositories/itwitterrepository.dart';

class TwitterPageViewModel {
  final ITwitterRepository twitterRepository;

  TwitterPageViewModel(this.twitterRepository);

  Future<TwitterPageModel> getTwitterData() async {
    var twitterPageData = await twitterRepository.getTwitterPageData();
    return twitterPageData;
  }
}