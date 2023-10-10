import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/sizedbox.dart';

class ThirdNamed extends StatelessWidget {
  const ThirdNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Third screen'),
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
            Text(" Name is ${Get.parameters['name']}"),
          ],
        ),
      ),
    );
  }
}
