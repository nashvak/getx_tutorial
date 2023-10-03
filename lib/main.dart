import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/screens/first_scrren.dart';
import 'package:getx_sample/screens/fourth_named.dart';
import 'package:getx_sample/screens/second_named.dart';
import 'package:getx_sample/screens/second_screen.dart';
import 'package:getx_sample/screens/third_named.dart';
import 'package:getx_sample/screens/third_screen.dart';
import 'package:getx_sample/screens/unknown_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //provided by getx library, uses materialapp as its child
      title: 'getx',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => const FirstScreen()),
        GetPage(name: '/second', page: () => const SecodScreen()),
        GetPage(name: '/third', page: () => const ThirdScreen()),
        GetPage(name: '/namedSecond', page: () => const SecondNamed()),
        GetPage(name: '/namedThird', page: () => const ThirdNamed()),
        GetPage(
            name: '/argthird/:name',
            page: () => const ThirdNamed(),
            transition: Transition.leftToRight),
      ],
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoute()),
      //home: FirstScreen(),
    );
  }
}
