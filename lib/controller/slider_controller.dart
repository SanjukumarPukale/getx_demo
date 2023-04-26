import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opacity = 0.4.obs;

  changeOpacity(double value) {
    opacity.value = value;
    // print(opacity.value);
  }
}