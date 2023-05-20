import 'package:flutter/material.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/shared/models/iresponsiveconfig.dart';
import 'package:roman_web_portfolio/styles/styles.dart';

class WelcomePageResponsiveConfig implements IResponsiveConfig {

  final double titleSize;
  final double subTitleSize;
  final double badgeSize;
  final double handSize;
  final double imageSize;
  final double imageBorderSize;
  final Axis headerAxis;
  final Axis subtitleAxis;
  final SizedBox headerGap;
  final SizedBox subtitleGap;

  WelcomePageResponsiveConfig({
    required this.headerAxis,
    required this.titleSize,
    required this.subTitleSize,
    required this.badgeSize,
    required this.handSize,
    required this.imageSize,
    required this.imageBorderSize,
    required this.subtitleAxis,
    required this.headerGap,
    required this.subtitleGap
  });

  static Map<DeviceType, WelcomePageResponsiveConfig> responsiveUI = {
    DeviceType.mobile: WelcomePageResponsiveConfig(
      titleSize: 50,
      subTitleSize: 20,
      badgeSize: 50,
      handSize: 50,
      imageSize: 60,
      imageBorderSize: 4,
      headerAxis: Axis.vertical,
      subtitleAxis: Axis.vertical,
      headerGap: PersonalPortfolioStyles.mediumVGap,
      subtitleGap: PersonalPortfolioStyles.smallVGap
    ),
    DeviceType.tablet: WelcomePageResponsiveConfig(
      titleSize: 80,
      subTitleSize: 30,
      badgeSize: 60,
      handSize: 60,
      imageSize: 80,
      imageBorderSize: 6,
      headerAxis: Axis.horizontal,
      subtitleAxis: Axis.horizontal,
      headerGap: PersonalPortfolioStyles.mediumHGap,
      subtitleGap: PersonalPortfolioStyles.smallHGap
    ),
    DeviceType.desktop: WelcomePageResponsiveConfig(
      titleSize: 100,
      subTitleSize: 40,
      badgeSize: 80,
      handSize: 90,
      imageSize: 100,
      imageBorderSize: 8,
      headerAxis: Axis.horizontal,
      subtitleAxis: Axis.horizontal,
      headerGap: PersonalPortfolioStyles.mediumHGap,
      subtitleGap: PersonalPortfolioStyles.smallHGap
    ),
  };
}