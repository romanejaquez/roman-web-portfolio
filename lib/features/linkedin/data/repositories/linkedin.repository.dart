import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/linkedin/data/models/linkedin_page.model.dart';
import 'package:roman_web_portfolio/features/linkedin/data/repositories/ilinkedin.repository.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';

class LinkedInRepository implements ILinkedInRepository {

  final Ref ref;
  LinkedInRepository(this.ref);
  
  @override
  Future<LinkedInPageModel> getLinkedInPageData() {
    return ref.read(dbProvider).getPageDataFromDB(
        LinkedInPageModel.fromDatabase,
        DatabaseCollections.pageContent.name,
        DatabaseDocs.linkedInPage.name
    );
  }

}