import 'package:flutter/material.dart';

class PersonalPortfolioIcons {
  PersonalPortfolioIcons._();

  static const _kFontFam = 'PersonalPortfolioIcons';
  static const String? _kFontPkg = null;

  static Map<String, IconData> iconMap = {
    'badge': badge,
    'email': email,
    'github': github,
    'linkedin': linkedin,
    'qrcode': qrcode,
    'twitter': twitter,
    'user': user,
    'wave': wave,
    'web': web
  };

  static const IconData badge = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData email = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData github = IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData linkedin = IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData qrcode = IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData twitter = IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user = IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData wave = IconData(0xe807, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData web = IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  static IconData iconFromName(String icon) {
    return iconMap[icon] ?? Icons.abc;
  }
}