
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/image_picker_controller.dart';

class ImagePickerDemo extends StatelessWidget {
  ImagePickerDemo({ Key? key }) : super(key: key);

  final imagePickerController = Get.put(ImagePickerController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker demo using Getx'),
      ),
      body: Obx(() {
        return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: imagePickerController.imagePath.isNotEmpty ? FileImage(File(imagePickerController.imagePath.toString())) : null,
                ),
              ),
              TextButton(onPressed: () {
                imagePickerController.getImage();
              }, child: Text('Pick Image')),
          ],
        );
      },)
    );
  }
}