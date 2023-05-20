import 'package:flutter/material.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/shared/models/iresponsiveconfig.dart';

class WebPageResponsiveConfig implements IResponsiveConfig {

  final double iconSize;
  final double titleSize;
  final double subtitleSize;
  final double buttonLabelSize;
  final EdgeInsets buttonPadding;
  final EdgeInsets buttonMargin;

  WebPageResponsiveConfig({
    required this.iconSize,
    required this.titleSize,
    required this.subtitleSize,
    required this.buttonLabelSize,
    required this.buttonMargin,
    required this.buttonPadding
  });

  static Map<DeviceType, WebPageResponsiveConfig> responsiveUI = {
    DeviceType.mobile: WebPageResponsiveConfig(
      iconSize: 40,
      titleSize: 60,
      subtitleSize: 20,
      buttonLabelSize: 20,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
    DeviceType.tablet: WebPageResponsiveConfig(
      iconSize: 60,
      titleSize: 80,
      subtitleSize: 30,
      buttonLabelSize: 20,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
    DeviceType.desktop: WebPageResponsiveConfig(
      iconSize: 80,
      titleSize: 100,
      subtitleSize: 40,
      buttonLabelSize: 30,
      buttonMargin: const EdgeInsets.only(top: 20),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  };
}