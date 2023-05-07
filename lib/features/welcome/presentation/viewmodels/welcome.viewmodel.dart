import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/welcome/data/models/welcome_page.model.dart';
import 'package:roman_web_portfolio/features/welcome/data/repositories/iwelcome.repository.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/providers/welcome_page.providers.dart';

class WelcomePageViewModel {

  final Ref ref;
  final IWelcomeRepository welcomeRepository;

  WelcomePageViewModel(this.welcomeRepository, this.ref);

  Future<WelcomePageModel> getWelcomePageData() async {
    var welcomePageData = await welcomeRepository.getWelcomePageData();

    ref.read(greetingsRawListProvider.notifier).state = welcomePageData.greetings;
    return welcomePageData;
  }
}