import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/screens/third_screen.dart';

class SecodScreen extends StatelessWidget {
  const SecodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("second screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Back to first screen'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              //Goto third screen but no option to go back to previous screen.
              //Get.off(ThirdScreen());
              //Goto to third screen and cancel all the previous screen.
              // Get.offAll(ThirdScreen());
              //passsing arguments
              //Get.to(ThirdScreen(), arguments: "Hello nashva");
              var data = await Get.to(ThirdScreen());
              print(data);
            },
            child: const Text('third screen'),
          ),
        ],
      ),
    );
  }
}
