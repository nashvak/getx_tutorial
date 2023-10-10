import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/button.dart';
import '../../widgets/sizedbox.dart';

class SecondNamed extends StatelessWidget {
  const SecondNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Named second'),
      ),
      body: Column(
        children: [
          Sizedbox(height: 20, width: null),
          Button(
              title: 'Get.offNamed',
              color: Colors.red,
              ontap: () {
                //removes the previous screen, goes to firstScreen
                Get.offNamed('/namedThird');
              }),
          Sizedbox(height: 20, width: null),
          Button(
              title: 'Get.ofAllNamed',
              color: Colors.red,
              ontap: () {
                //remove all the previous screens
                Get.offAllNamed('/namedThird');
              }),
          Sizedbox(height: 20, width: null),
          Button(
              title: 'dynamic url',
              color: Colors.red,
              ontap: () {
                Get.toNamed("/namedFourth?channel=Nashva&content=31");
              }),
          Sizedbox(height: 20, width: null),
          Button(
              title: 'Pass data',
              color: Colors.red,
              ontap: () {
                Get.toNamed('/argthird/nashva');
              }),
          Sizedbox(height: 20, width: null),
          Button(
              title: 'unknown route',
              color: Colors.red,
              ontap: () {
                Get.toNamed('/xasadass');
              }),
        ],
      ),
    );
  }
}
