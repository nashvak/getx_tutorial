import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opacity = 0.4.obs;
  RxBool toggle = true.obs;
  void changeOpacity(double value) {
    opacity.value = value;
  }

  changeToggle(value) {
    toggle.value = value;
  }
}
