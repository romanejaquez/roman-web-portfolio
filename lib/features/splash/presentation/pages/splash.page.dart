import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:roman_web_portfolio/features/shell/presentation/pages/portfoliomain.page.dart';
import 'package:roman_web_portfolio/features/splash/presentation/widgets/splash_loading.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/pages/welcome.page.dart';
import 'package:roman_web_portfolio/helpers/utils.dart';
import 'package:roman_web_portfolio/styles/colors.dart';

class SplashPage extends StatelessWidget {
  static const String route = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(Utils.mainNav.currentContext!)
        .go(WelcomePage.route);
    });

    return const Scaffold(
      backgroundColor: PersonalPortfolioColors.mainBlue,
      body: SplashLoading(message: 'Loading an awesome,\nKick-ass Profile...')
    );
  }
}