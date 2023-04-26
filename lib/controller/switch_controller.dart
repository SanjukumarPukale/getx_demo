import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool isOn = false.obs;

  changeSwitchState(bool value) {
    isOn.value = value;
  }
}