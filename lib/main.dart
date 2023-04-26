import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screens/counter_demo.dart';
import 'package:getx_demo/controller/counter_controller.dart';
import 'package:getx_demo/screens/image_picker_demo.dart';
import 'package:getx_demo/screens/mark_favourite_demo.dart';
import 'package:getx_demo/screens/slider_demo.dart';
import 'package:getx_demo/screens/switch_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      getPages: [
        GetPage(name: '/', page: () => MyHomePage()),
        GetPage(name: '/slider', page: () => SliderDemo()),
        GetPage(name: '/switch', page:() => SwitchDemo()),
        GetPage(name: '/favourite', page: () => MarkFavouriteDemo()),
        GetPage(name: '/imagePicker', page: () => ImagePickerDemo()),
      ],
    );
  }
}


