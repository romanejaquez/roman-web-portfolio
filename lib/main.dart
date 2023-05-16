import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:roman_web_portfolio/shared/repositories/firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

  runApp(
    const ProviderScope(child: PortfolioApp())
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});
  
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