import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/pages/welcome.page.dart';
import 'package:roman_web_portfolio/styles/colors.dart';

final pageColorProvider = StateProvider<LinearGradient>((ref) {
  return PersonalPortfolioColors.pageColor[WelcomePage.route]!;
});

final bgPageRouteProvider = StateProvider<String>((ref) {
  return WelcomePage.route;
});