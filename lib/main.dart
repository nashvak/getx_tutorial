import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/screens/first_scrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      //provided by getx library, uses materialapp as its child
      title: 'getx',
      home: FirstScreen(),
    );
  }
}
