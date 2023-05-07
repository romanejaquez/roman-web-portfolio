import 'package:flutter/material.dart';

class ErrorNotification extends StatelessWidget {

  final String message;
  const ErrorNotification({
    super.key,
    required this.message  
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.warning, color: Colors.white, size: 80),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Text(
              message, textAlign: TextAlign.center, 
              style: const TextStyle(color: Colors.white, fontSize: 20)
            )
          )
        ],
      ),
    );
  }
}