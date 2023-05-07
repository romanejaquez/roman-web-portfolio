import 'package:roman_web_portfolio/features/linkedin/data/models/linkedin_page.model.dart';
import 'package:roman_web_portfolio/features/linkedin/data/repositories/ilinkedin.repository.dart';

class LinkedInPageViewModel {
  final ILinkedInRepository linkedinRepository;

  LinkedInPageViewModel(this.linkedinRepository);

  Future<LinkedInPageModel> getLinkedInPageData() async {
    var linkedInPageData = await linkedinRepository.getLinkedInPageData();
    return linkedInPageData;
  }
}