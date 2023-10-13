import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/state_management/screens/second2.dart';

import '../controller/counter_controller.dart';

// class StateOne extends StatelessWidget {
//   StateOne({super.key});
//   final CounterController controller = Get.put(CounterController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('first screen'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Obx(
//             () => Center(
//               child: Text(
//                 controller.counter.toString(),
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           TextButton(
//               onPressed: () {
//                 Get.to(
//                   StateSecond(),
//                 );
//               },
//               child: Text('next')),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         controller.incrementCounter();
//       }),
//     );
//   }
// }

//

//      U S I N G   G E T X

class StateOne extends StatelessWidget {
  StateOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetX<CounterController>(
              init: CounterController(),
              builder: (controller) {
                return Center(
                  child: Text(
                    controller.counter.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                );
              }),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Get.to(
                  StateSecond(),
                );
              },
              child: Text('next')),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.find<CounterController>().incrementCounter();
      }),
    );
  }
}



//   U S I N G   G E T B U I L D E R