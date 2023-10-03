import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthNamed extends StatelessWidget {
  FourthNamed({required this.data, super.key});
  var data;

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
          ],
        ),
      ),
    );
  }
}
