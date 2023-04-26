import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList =
      ['Mango', 'Banana', 'Apple', 'Grapes', 'Papaya'].obs;

  RxList favouriteList = [].obs;

  addToFavourite(String value) {
    favouriteList.add(value);
  }

  removeFromFavourite(String value) {
    favouriteList.remove(value);
  }
}
