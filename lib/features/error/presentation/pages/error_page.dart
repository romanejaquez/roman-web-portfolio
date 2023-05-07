import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:roman_web_portfolio/styles/colors.dart';

class ErrorPage extends StatelessWidget {

  final String errorMessage;
  const ErrorPage({
    super.key,
    required this.errorMessage  
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              PersonalPortfolioColors.errorBgTop,
              PersonalPortfolioColors.errorBgBottom
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.warning,
                size: 80,
                color: PersonalPortfolioColors.errorIcon
              ).animate(
                onPlay:(controller) {
                  controller.repeat();
                },
              ).scaleXY(
                begin: 0.8, end: 1,
                duration: 1.seconds,
                curve: Curves.easeInOut
              ).fadeIn(),
              const Text('Error!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(errorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  )
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
        ),
      )
    );
  }
}