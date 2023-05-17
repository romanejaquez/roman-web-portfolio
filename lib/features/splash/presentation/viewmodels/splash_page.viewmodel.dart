import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/github/presentation/providers/github_page.providers.dart';
import 'package:roman_web_portfolio/features/linkedin/presentation/providers/linkedin_page.providers.dart';
import 'package:roman_web_portfolio/features/twitter/presentation/providers/twitter_page.providers.dart';
import 'package:roman_web_portfolio/features/web/presentation/providers/web_page.providers.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/providers/welcome_page.providers.dart';

class SplashPageViewModel {

  final Ref ref;
  
  SplashPageViewModel(this.ref);

  Future<bool> lazyloadPages() {
    Completer<bool> lazyCompleter = Completer();

    Future.wait([
      ref.read(welcomeProvider.future),
      ref.read(twitterProvider.future),
      ref.read(linkedInProvider.future),
      ref.read(githubProvider.future),
      ref.read(webpageProvider.future),
    ]).then((value) {
      lazyCompleter.complete(true);
    }).catchError((error) {
      lazyCompleter.completeError(error);
    }).onError((error, stackTrace) {
      lazyCompleter.completeError(error!);
    });

    return lazyCompleter.future;
  }
}