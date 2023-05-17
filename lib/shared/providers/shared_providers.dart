import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/pages/welcome.page.dart';
import 'package:roman_web_portfolio/services/localstorage.service.dart';
import 'package:roman_web_portfolio/shared/repositories/database_provider.dart';
import 'package:roman_web_portfolio/shared/repositories/idb_provider.dart';
import 'package:roman_web_portfolio/styles/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

final pageColorProvider = StateProvider<LinearGradient>((ref) {
  return PersonalPortfolioColors.pageColor[WelcomePage.route]!;
});

final bgPageRouteProvider = StateProvider<String>((ref) {
  return WelcomePage.route;
});

final firebaseDbInstanceProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final dbProvider = Provider<IDBProvider>((ref) {
  return DatabaseProvider(ref);
});

final sharedPrefsInstanceProvider = Provider((ref) {
  return SharedPreferences.getInstance();
});

final webLocalStorageProvider = Provider((ref) {
  return WebLocalStorage(ref);
});
