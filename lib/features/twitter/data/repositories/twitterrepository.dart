
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/twitter/data/models/twitter_page.model.dart';
import 'package:roman_web_portfolio/features/twitter/data/repositories/itwitterrepository.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';

class TwitterRepository implements ITwitterRepository {

  final Ref ref;
  TwitterRepository(this.ref);
  
  @override
  Future<TwitterPageModel> getTwitterPageData() {
    
    return ref.read(dbProvider).getPageDataFromDB(
        TwitterPageModel.fromDatabase,
        DatabaseCollections.pageContent.name,
        DatabaseDocs.twitterPage.name
    );
  }
}