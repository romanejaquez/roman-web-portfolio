import 'package:flutter/material.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/shared/models/iresponsiveconfig.dart';

class GithubPageResponsiveConfig implements IResponsiveConfig {

  final double iconSize;
  final double titleSize;
  final double subtitleSize;
  final double buttonLabelSize;
  final EdgeInsets buttonPadding;
  final EdgeInsets buttonMargin;

  GithubPageResponsiveConfig({
    required this.iconSize,
    required this.titleSize,
    required this.subtitleSize,
    required this.buttonLabelSize,
    required this.buttonMargin,
    required this.buttonPadding
  });

  static Map<DeviceType, GithubPageResponsiveConfig> responsiveUI = {
    DeviceType.mobile: GithubPageResponsiveConfig(
      iconSize: 40,
      titleSize: 60,
      subtitleSize: 20,
      buttonLabelSize: 20,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
    DeviceType.tablet: GithubPageResponsiveConfig(
      iconSize: 60,
      titleSize: 80,
      subtitleSize: 30,
      buttonLabelSize: 20,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
    DeviceType.desktop: GithubPageResponsiveConfig(
      iconSize: 80,
      titleSize: 100,
      subtitleSize: 40,
      buttonLabelSize: 30,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  };
}