import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/web/presentation/providers/web_page.providers.dart';
import 'package:roman_web_portfolio/helpers/utils.dart';
import 'package:roman_web_portfolio/shared/widgets/error_notification.dart';
import 'package:roman_web_portfolio/styles/colors.dart';

class WebPage extends ConsumerWidget {

  static const String route = "/web";
  const WebPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var webPageData = ref.watch(webpageProvider);
    
    return webPageData.when(
      loading: () => const Center(child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      )),
      error:(error, stackTrace) => ErrorNotification(message: error.toString()),
      data: (data) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(data.icon, size: 80,
                color: PersonalPortfolioColors.webIcon
              ).animate(
                onPlay:(controller) {
                  controller.repeat(reverse: true);
                },
              ).scaleXY(
                begin: 0.8, end: 1,
                duration: 1.seconds,
                curve: Curves.easeInOut
              ),
              Text(data.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Utils.launchUrlLink(data.url);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text(data.subTitle, style: 
                      const TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      )
                    ),
                  ),
                ),
              )
            ].animate(
              interval: 100.ms
            )
            .slideY(
              begin: 1, end: 0,
              duration: 0.5.seconds,
              curve: Curves.easeInOut
            ).fadeIn(),
          )
        );
      }
    );
  }
}
