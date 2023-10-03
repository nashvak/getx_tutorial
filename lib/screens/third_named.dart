import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/button.dart';
import '../widgets/sizedbox.dart';

class ThirdNamed extends StatelessWidget {
  const ThirdNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third'),
      ),
      body: Center(
        child: Column(
          children: [
            // Button(
            //     title: 'data to previous',
            //     color: Colors.red,
            //     ontap: () {
            //       Get.back(result: "hello");
            //     }),

            Sizedbox(height: 20, width: null),
            const Text("Passing arguments via named route"),
            Sizedbox(height: 20, width: null),
            Text(" age is ${Get.parameters['name']}"),
          ],
        ),
      ),
    );
  }
}
