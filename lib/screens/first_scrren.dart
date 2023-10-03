import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_sample/screens/second_screen.dart';
import 'package:getx_sample/route_management/snackbar.dart';

import '../route_management/bottom_sheet.dart';
import '../route_management/dialog.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First screen"),
      ),
      body: Column(
        children: [
          const SnackbarEx(),
          const Dialogbox(),
          const Bottomsheet(),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const SecodScreen(),
                  // SecondScreen is open as a dialog box
                  //fullscreenDialog: true,
                  //transition animation
                  transition: Transition.zoom,
                  duration: const Duration(seconds: 2));
              // curve: Curves.bounceInOut);
            },
            child: const Text('Goto second screen'),
          ),
        ],
      ),
    );
  }
}
