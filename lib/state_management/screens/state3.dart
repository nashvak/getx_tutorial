import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/state_management/controller/favourites_controller.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

FavouritesController controll = Get.put(FavouritesController());

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controll.items[index]),
            trailing: IconButton(
                onPressed: () {
                  if (controll.tempItems
                      .contains(controll.items[index].toString())) {
                    controll.removeFromFavourites(controll.items[index]);
                  } else {
                    controll.addToFavourites(controll.items[index]);
                  }
                },
                icon: Obx(
                  () => Icon(
                    Icons.favorite_outline,
                    color: controll.tempItems
                            .contains(controll.items[index].toString())
                        ? Colors.red
                        : Colors.grey,
                  ),
                )),
          );
        },
        itemCount: controll.items.length,
      ),
    );
  }
}
