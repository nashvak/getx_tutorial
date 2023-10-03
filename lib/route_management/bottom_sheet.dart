import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.bottomSheet(
            Container(
              // decoration: BoxDecoration(
              //     color: Colors.amber.shade100,
              //     borderRadius: BorderRadius.circular(20)),
              child: Wrap(
                children: [
                  ListTile(
                    leading: const Icon(Icons.sunny),
                    title: const Text('Light mode'),
                    onTap: () {
                      Get.changeTheme(ThemeData.light());
                      Get.back();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.dark_mode),
                    title: const Text('Dark mode'),
                    onTap: () {
                      Get.changeTheme(ThemeData.dark());
                      Get.back();
                    },
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.green,
            //barrierColor: Colors.black, //color of back screen
            //isDismissible:false //clicking outside the bottomsheet will not close the bottomsheet
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            //enableDrag: false,// cannot drag
          );
        },
        child: const Text('Show bottom sheet'));
  }
}
