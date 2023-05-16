import 'package:flutter/material.dart';
import 'package:roman_web_portfolio/styles/personal_portfolio_icons.dart';

class WebPageModel {
  final IconData icon;
  final String title;
  final String subTitle;
  final String url;

  WebPageModel({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.url
  });

  factory WebPageModel.fromDatabase(Map<String, dynamic> doc) {
    return WebPageModel(
      icon: PersonalPortfolioIcons.iconMap[doc['icon']]!, 
      title: doc['title'], 
      subTitle: doc['subTitle'], 
      url: doc['url'], 
    ); 
  }
}