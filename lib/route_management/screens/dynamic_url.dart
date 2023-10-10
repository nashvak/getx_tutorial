import 'package:flutter/material.dart';

class DynamicUrl extends StatelessWidget {
  const DynamicUrl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dynamic url'),
      ),
      body: Column(
        children: [Text('Removing all the pages from the stack')],
      ),
    );
  }
}
