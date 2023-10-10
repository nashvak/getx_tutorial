import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/sizedbox.dart';

class FourthNamed extends StatelessWidget {
  FourthNamed({super.key});
  //var data;
//required this.data,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Named Fourth'),
      ),
      body: Center(
        child: Column(
          children: [
            //recieve arguments from previous screen
            Text(
                "Name=${Get.parameters['channel']} and age is ${Get.parameters['content']}"),
            Sizedbox(height: 30, width: null),
            Container(
              width: Get.width * 0.5,
              height: Get.height * 0.3,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
