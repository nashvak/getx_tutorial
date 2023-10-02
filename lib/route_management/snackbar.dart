import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/route_management/dialog.dart';

class SnackbarEx extends StatelessWidget {
  const SnackbarEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('getx snackbar')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Showing snackbar',
                  'Todo added',
                  backgroundColor: Colors.red.shade200,
                  messageText: Text('Overriding the above message'),
                  titleText: Text('Overriding the above first title'),
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  forwardAnimationCurve: Curves.easeIn,
                  duration: Duration(seconds: 3),
                  icon: Icon(Icons.send),
                  mainButton: TextButton(
                    onPressed: () {},
                    child: Text('Retry'),
                  ),
                  onTap: (val) {}, //while clicking the snackbar
                  overlayBlur: 6, //blur the screen
                );
              },
              child: const Text('Show snackbar'),
            ),
            SizedBox(
              height: 30,
            ),
            Dialogbox(),
          ],
        ),
      ),
    );
  }
}
