import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
                    leading: Icon(Icons.sunny),
                    title: Text('Light mode'),
                    onTap: () {
                      Get.changeTheme(ThemeData.light());
                      Get.back();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.dark_mode),
                    title: Text('Dark mode'),
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
        child: Text('Show bottom sheet'));
  }
}
