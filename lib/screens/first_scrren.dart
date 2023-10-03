import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_sample/screens/second_screen.dart';
import 'package:getx_sample/route_management/snackbar.dart';
import 'package:getx_sample/widgets/button.dart';
import 'package:getx_sample/widgets/sizedbox.dart';

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
          Row(
            children: [
              const SnackbarEx(),
              Sizedbox(
                height: null,
                width: 10,
              ),
              const Dialogbox(),
              Sizedbox(
                height: null,
                width: 10,
              ),
              const Bottomsheet(),
            ],
          ),
          Column(
            children: [
              Sizedbox(height: 30, width: null),
              Button(
                  color: Colors.green,
                  title: 'Get.to',
                  ontap: () {
                    Get.to(() => const SecodScreen(),
                        // SecondScreen is open as a dialog box
                        //fullscreenDialog: true,
                        //transition animation
                        transition: Transition.zoom,
                        duration: const Duration(seconds: 1));
                    // curve: Curves.bounceInOut);
                  }),
              Sizedbox(height: 30, width: null),
              Button(
                  color: Colors.red,
                  title: "Get.toNamed",
                  ontap: () {
                    Get.toNamed('/namedSecond');
                  })
            ],
          ),
        ],
      ),
    );
  }
}
