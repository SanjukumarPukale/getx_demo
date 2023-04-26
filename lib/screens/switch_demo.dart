import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/switch_controller.dart';

class SwitchDemo extends StatelessWidget {
  SwitchDemo({Key? key}) : super(key: key);

  final switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Demo using Getx'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text('Notification'),
              Obx(
                () => Switch(
                    value: switchController.isOn.value,
                    onChanged: (value) {
                      switchController.changeSwitchState(value); // only Obx part will be rebuild
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
