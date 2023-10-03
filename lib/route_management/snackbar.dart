import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarEx extends StatelessWidget {
  const SnackbarEx({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.snackbar(
          'Showing snackbar',
          'Todo added',
          backgroundColor: Colors.red.shade200,
          messageText: const Text('Overriding the above message'),
          titleText: const Text('Overriding the above first title'),
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal,
          forwardAnimationCurve: Curves.easeIn,
          duration: const Duration(seconds: 3),
          icon: const Icon(Icons.send),
          mainButton: TextButton(
            onPressed: () {},
            child: const Text('Retry'),
          ),
          onTap: (val) {}, //while clicking the snackbar
          overlayBlur: 6, //blur the screen
        );
      },
      child: const Text('Show snackbar'),
    );
  }
}
