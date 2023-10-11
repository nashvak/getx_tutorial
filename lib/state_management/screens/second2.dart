import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/state_management/screens/state3.dart';

import '../controller/slider_controller.dart';

class StateSecond extends StatefulWidget {
  StateSecond({super.key});

  @override
  State<StateSecond> createState() => _StateSecondState();
}

class _StateSecondState extends State<StateSecond> {
  final SliderController cont = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('slider'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => Container(
                width: 200,
                height: 200,
                color: Colors.red.withOpacity(cont.opacity.value),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Slider(
                value: cont.opacity.value,
                onChanged: (value) {
                  cont.changeOpacity(value);
                },
              ),
            ),
            Obx(() => Text(cont.opacity.toString())),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Switch(
                value: cont.toggle.value,
                onChanged: (value) {
                  cont.changeToggle(value);
                  print(value);
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.to(
                    const Favourites(),
                  );
                },
                child: const Text('next')),
          ],
        ),
      ),
    );
  }
}
