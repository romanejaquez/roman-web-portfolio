import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GreetingsViewModel extends StateNotifier<String> {
  
  final List<String> greetings;
  int greetingsCounter = 0;
  Timer greetingsTimer = Timer(Duration.zero, () {});
  
  GreetingsViewModel(super.state, this.greetings);

  void initializeGreetings() {

    greetingsTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (greetingsCounter == greetings.length) {
        greetingsCounter = 0;
      }

      state = greetings[greetingsCounter];
      greetingsCounter++;
    });
  }

  @override
  void dispose() {
    greetingsTimer.cancel();
    super.dispose();
  }

  void resetTimer() {
    greetingsTimer.cancel();
    greetingsTimer = Timer(Duration.zero, () {});
  }
}