import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:roman_web_portfolio/features/splash/presentation/providers/splash_page.providers.dart';
import 'package:roman_web_portfolio/features/splash/presentation/widgets/splash_loading.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/pages/welcome.page.dart';
import 'package:roman_web_portfolio/helpers/utils.dart';
import 'package:roman_web_portfolio/shared/widgets/error_notification.dart';
import 'package:roman_web_portfolio/styles/colors.dart';

class SplashPage extends ConsumerWidget {
  static const String route = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var splashFuture = ref.watch(splashPageFutureProvider);
    var loadingMessage = const SplashLoading(message: 'Loading an awesome,\nKick-ass Profile...');

    return Scaffold(
      backgroundColor: PersonalPortfolioColors.mainBlue,
      body: splashFuture.when(
        loading: () => loadingMessage,
        error:(error, stackTrace) => ErrorNotification(message: error.toString()),
        data:(data) {
          GoRouter.of(Utils.mainNav.currentContext!).go(WelcomePage.route);
          return loadingMessage;
        },
      )
    );
  }
}