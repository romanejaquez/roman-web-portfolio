import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/providers/welcome_page.providers.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/responsiveness/welcome_page_responsive.config.dart';
import 'package:roman_web_portfolio/features/welcome/presentation/widgets/greetings_label.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/helpers/responsive_ui_helper.dart';
import 'package:roman_web_portfolio/shared/widgets/error_notification.dart';
import 'package:roman_web_portfolio/styles/colors.dart';
import 'package:roman_web_portfolio/styles/personal_portfolio_icons.dart';

class WelcomePage extends ConsumerWidget {

  static const String route = "/welcome";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final uiConfig = context.uiConfig<WelcomePageResponsiveConfig>();
    final welcomeDataAsync = ref.watch(welcomeProvider);

    return welcomeDataAsync.when(
      loading: () => const Center(child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      )),
      error:(error, stackTrace) => ErrorNotification(message: error.toString()),
      data: (welcomeData) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flex(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                direction: uiConfig.headerAxis,
                children: [
                  Container(
                    width: uiConfig.imageSize,
                    height: uiConfig.imageSize,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PersonalPortfolioColors.welcomePrimary, 
                        width: uiConfig.imageBorderSize
                      ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                      image: NetworkImage(welcomeData.imgPath),
                      fit: BoxFit.cover)
                    )
                  ),
                  uiConfig.headerGap,
                  Icon(PersonalPortfolioIcons.wave,
                    size: uiConfig.handSize, 
                    color: PersonalPortfolioColors.welcomeIcon
                  ).animate(
                    onPlay:(controller) {
                      controller.repeat(reverse: true);
                    },
                  ).rotate(
                      begin: -0.25,
                      end: 0,
                      duration: 0.5.seconds,
                      curve: Curves.easeInOut
                    )
                ]
              ),
              const GreetingsLabel(),
              Text.rich(
                TextSpan(
                style: TextStyle(
                  fontSize: uiConfig.titleSize, 
                  color: Colors.white
                ),
                children: [
                    const TextSpan(text: "I'm "),
                    TextSpan(
                        text: welcomeData.name, 
                        style: const TextStyle(
                          fontWeight: FontWeight.bold
                        )
                    ),
                  ]
                ),
                textAlign: TextAlign.center,
              ),
              Flex(
                direction: uiConfig.headerAxis,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    PersonalPortfolioIcons.badge,
                    color: PersonalPortfolioColors.welcomePrimary,
                    size: uiConfig.badgeSize
                  ),
                  uiConfig.subtitleGap,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(welcomeData.title, textAlign: TextAlign.center, style: TextStyle(fontSize: uiConfig.subTitleSize, color: Colors.white)),
                      Text(welcomeData.subTitle, textAlign: TextAlign.center, style: TextStyle(fontSize: uiConfig.subTitleSize, color: Colors.white)),
                    ],
                  )
                ]
              )
            ].animate(
              interval: 100.ms
            )
            .slideY(
              begin: 1, end: 0,
              duration: 0.5.seconds,
              curve: Curves.easeInOut
            ).fadeIn()
          )
        );
      }
    );
  }
}