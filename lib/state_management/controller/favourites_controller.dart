import 'package:get/get.dart';

class FavouritesController extends GetxController {
  RxList<String> items = ['mango', 'apple', 'strawberry', 'orange'].obs;
  RxList tempItems = [].obs;
  void removeFromFavourites(String value) {
    tempItems.remove(value);
  }

  void addToFavourites(String value) {
    tempItems.add(value);
  }
}
