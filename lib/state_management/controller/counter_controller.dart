import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  void incrementCounter() {
    counter.value++;
  }
}

class GetbuilderController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(); // update the count variable on the ui
  }
}
