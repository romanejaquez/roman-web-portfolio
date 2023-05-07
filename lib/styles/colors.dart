import 'package:flutter/material.dart';
import 'package:roman_web_portfolio/features/github/presentation/pages/github.page.dart';
import 'package:roman_web_portfolio/features/linkedin/presentation/pages/linkedin.page.dart';
import 'package:roman_web_portfolio/features/twitter/presentation/pages/twitter.page.dart';
import 'package:roman_web_portfolio/features/web/presentation/pages/web.page.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/pages/welcome.page.dart';

class PersonalPortfolioColors {

  // for the dark theme
  static const Color mainBlue = Color(0xFF51BFD7);
  static const Color secondaryBlue = Color(0XFF1E6B7C);
  static const Color lightBlue = Color(0xFF5DD1EB);
  static const Color textColor = Colors.white;
  static const Color primaryDark = Color(0xFF1F6D7E);
  static const Color lightLabel = Color(0xFFD5F4FB);
  static const Color errorIcon = Color(0xFFFFB5B5);
  static const Color errorBgTop = Color(0xFFCC2B2B);
  static const Color errorBgBottom = Color(0xFF750E0E);

  // per page
  // welcome
  static const Color welcomeIcon = Color(0xFFFFF1BF);
  static const Color welcomePrimary = Color(0xFFF2C41C);
  static const Color welcomeSecondary = Color(0xE76B4E00);

  // twitter:
  
  static const Color twitterIcon = Color(0xFF72C9FF);
  static const Color twitterPrimary = Color(0xFF1CA1F2);
  static const Color twitterSecondary = Color(0xFF0C75B6);

  // linkedin
  static const Color linkedInIcon = Color(0xFF23B2FF);
  static const Color linkedInPrimary = Color(0xFF0077B5);
  static const Color linkedInSecondary = Color(0xFF004D76);

  // web
  static const Color webIcon = Color(0xFFD382FF);
  static const Color webPrimary = Color(0xFF8C00D7);
  static const Color webSecondary = Color(0xFF4D0076);

  // github
  static const Color githubIcon = Color(0xFFBEBEBE);
  static const Color githubPrimary = Color(0xFF6C6C6C);
  static const Color githubSecondary = Color(0xFF3B3B3B);

  static Map<String, LinearGradient> pageColor = {
    WelcomePage.route: const LinearGradient(
      colors: [
        PersonalPortfolioColors.welcomePrimary,
        PersonalPortfolioColors.welcomeSecondary
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
    ),
    TwitterPage.route: const LinearGradient(
      colors: [
        PersonalPortfolioColors.twitterPrimary,
        PersonalPortfolioColors.twitterSecondary
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
    ),
    LinkedInPage.route: const LinearGradient(
      colors: [
        PersonalPortfolioColors.linkedInPrimary,
        PersonalPortfolioColors.linkedInSecondary
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
    ),
    WebPage.route: const LinearGradient(
      colors: [
        PersonalPortfolioColors.webPrimary,
        PersonalPortfolioColors.webSecondary
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
    ),
    GithubPage.route: const LinearGradient(
      colors: [
        PersonalPortfolioColors.githubPrimary,
        PersonalPortfolioColors.githubSecondary
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
    )
  };
}