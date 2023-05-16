import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/web/data/models/web_page.model.dart';
import 'package:roman_web_portfolio/features/web/data/repositories/iweb.repository.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';

class WebPageRepository implements IWebPageRepository {

  final Ref ref;
  WebPageRepository(this.ref);

  @override
  Future<WebPageModel> getWebPageData() {
    
    return ref.read(dbProvider).getPageDataFromDB(
        WebPageModel.fromDatabase,
        DatabaseCollections.pageContent.name,
        DatabaseDocs.webPage.name
    );
  }
}