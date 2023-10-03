import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/widgets/button.dart';

import '../widgets/sizedbox.dart';

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
            Button(
                title: 'data to previous',
                color: Colors.green,
                ontap: () {
                  Get.back(result: "hello");
                }),
            Sizedbox(height: 20, width: null),
            //recieve arguments from previous screen
            Text("${Get.arguments}"),
          ],
        ),
      ),
    );
  }
}
