import 'package:flutter/material.dart';

class Sizedbox extends StatelessWidget {
  final double? height;
  final double? width;
  Sizedbox({required this.height, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
