import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/slider_controller.dart';

class SliderDemo extends StatelessWidget {
  SliderDemo({Key? key}) : super(key: key);

  final opacityController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    print("Widget rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Page Getx Demo'),
      ),
      body: Center(
        child: Obx(    // only Obx part will be rebuild
          () {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color:
                      Colors.red.withOpacity(opacityController.opacity.value),
                ),
                const SizedBox(
                  height: 30,
                ),
                Slider(
                    value: opacityController.opacity.value,
                    onChanged: (value) {
                      opacityController.changeOpacity(value);
                    }),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Previous Page'))
              ],
            );
          },
        ),
      ),
    );
  }
}
