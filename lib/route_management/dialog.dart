import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.defaultDialog(
              title: 'Delete record',
              middleText: 'Doyou want to delete this record',
              backgroundColor: Colors.amberAccent,
              radius: 40,
              //if we use both content and middle text ,the content overrides the middletext
              // content: Column(
              //   children: [
              //     Text('Data loading '),
              //     Text('dsf'),
              //   ],
              // ),
              contentPadding: const EdgeInsets.all(10),
              titlePadding: const EdgeInsets.all(20),
              // textCancel: 'Cancel',  //default style
              // textConfirm: 'Ok',
              // onCancel: () {},
              // onConfirm: () {},
              //buttonColor: Colors.green,
              //to create customized button we can use confirm instead of textConfirm
              confirm: TextButton(
                onPressed: () {
                  //Navigator.pop(context);
                  Get.back();
                },
                child: const Text("Ok"),
              ),
              //////////while clicking outside the dialog box ,it doesnot pop
              barrierDismissible: false);
        },
        child: const Text(' dialog'));
  }
}
