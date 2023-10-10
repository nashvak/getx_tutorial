import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/route_management/screens/third_screen.dart';
import 'package:getx_sample/widgets/sizedbox.dart';

import '../../widgets/button.dart';

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
        children: [
          Button(
            color: Colors.green,
            title: 'Get.back',
            ontap: () {
              Get.back();
            },
          ),
          Sizedbox(height: 20, width: null),
          //Goto third screen but no option to go back to previous screen.
          Button(
              color: Colors.green,
              title: 'Get.off',
              ontap: () {
                Get.off(ThirdScreen());
              }),
          Sizedbox(height: 20, width: null),
          //Goto to third screen and cancel all the previous screen.
          Button(
              color: Colors.green,
              title: 'Get.offAll',
              ontap: () {
                Get.offAll(ThirdScreen());
              }),
          Sizedbox(height: 20, width: null),
          Button(
            title: 'pass data',
            color: Colors.green,
            ontap: () {
              //passsing arguments
              Get.to(ThirdScreen(), arguments: "Hello nashva");
              // var data = await Get.to(ThirdScreen());
              // print(data);
            },
          ),
        ],
      ),
    );
  }
}
