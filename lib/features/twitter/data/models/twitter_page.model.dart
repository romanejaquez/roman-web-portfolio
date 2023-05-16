import 'package:flutter/material.dart';
import 'package:roman_web_portfolio/styles/personal_portfolio_icons.dart';

class TwitterPageModel {
  final IconData icon;
  final String title;
  final String subTitle;
  final String handle;
  final String url;

  TwitterPageModel({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.handle,
    required this.url
  });

  factory TwitterPageModel.fromDatabase(Map<String, dynamic> doc) {
    return TwitterPageModel(
      icon: PersonalPortfolioIcons.iconMap[doc['icon']]!, 
      title: doc['title'], 
      subTitle: doc['subTitle'], 
      handle: doc['handle'], 
      url: doc['url'], 
    ); 
  }
}