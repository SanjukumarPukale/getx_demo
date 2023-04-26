import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/favourite_controller.dart';

class MarkFavouriteDemo extends StatefulWidget {
  MarkFavouriteDemo({Key? key}) : super(key: key);

  @override
  State<MarkFavouriteDemo> createState() => _MarkFavouriteDemoState();
}

class _MarkFavouriteDemoState extends State<MarkFavouriteDemo> {
  final favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print('Widget Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Favourite using getx demo'),
      ),
      body: ListView.builder(
        itemCount: favouriteController.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                onTap: () {
                  if (favouriteController.favouriteList
                      .contains(favouriteController.fruitList[index])) {
                    favouriteController.removeFromFavourite(
                        favouriteController.fruitList[index]);
                  } else {
                    favouriteController
                        .addToFavourite(favouriteController.fruitList[index]);
                  }
                },
                title: Text(favouriteController.fruitList[index]),
                trailing: Obx(
                  () => Icon(Icons.favorite,
                      color: favouriteController.favouriteList
                              .contains(favouriteController.fruitList[index])
                          ? Colors.red
                          : Colors.white),
                )),
          );
        },
      ),
    );
  }
}
