import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Get.back(result: "hello");
              },
              child: const Text("Back to second"),
            ),
            //recieve arguments from previous screen
            //Text("${Get.arguments}"),
          ],
        ),
      ),
    );
  }
}
