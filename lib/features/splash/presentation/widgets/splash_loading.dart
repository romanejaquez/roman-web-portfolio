import 'package:flutter/material.dart';

class SplashLoading extends StatelessWidget {

  final String message;
  const SplashLoading({
    super.key,
    required this.message  
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.account_circle, 
                    color: Colors.white, 
                    size: 50
                  )
                ),
                Center(
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  ),
                )
              ],
            )
          ),
          const SizedBox(width: 20),
          Text(message,
            style: const TextStyle(color: Colors.white)
          )
        ]
      )
    );
  }
}