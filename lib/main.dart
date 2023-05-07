import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/routes/app_routes.dart';

void main() {
  runApp(
    const ProviderScope(
      child: PortfolioApp()
    )
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio App',
      theme: ThemeData(
        fontFamily: 'Product Sans',
      ),
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
    );
  }
}