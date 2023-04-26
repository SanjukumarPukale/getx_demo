import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/counter_controller.dart';

class MyHomePage extends StatelessWidget {
  final title;

  final CounterController controller = Get.put(CounterController());

  MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    print("Widget is rebuilding");
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () {
                return Text(
                  controller.counter.toString(),
                  style: Theme.of(context).textTheme.headline4,    // only Obx part will be rebuild
                );
              },
            ),
            TextButton(onPressed: () {
              Get.toNamed('/slider');
            }, child: const Text("Slider Page")),
            TextButton(onPressed: () {
              Get.toNamed('/switch');
            }, child: const Text("Switch Page")),
            TextButton(onPressed: () {
              Get.toNamed('/favourite');
            }, child: const Text("Favourite Page")),
            TextButton(onPressed: () {
              Get.toNamed('/imagePicker');
            }, child: const Text("ImagePicker Page")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}