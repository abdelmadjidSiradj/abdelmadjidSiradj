import 'package:flutter/material.dart';

class Imageslite extends StatelessWidget {
  String nameimage;
  Imageslite({required this.nameimage});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: Stack(children: [
      Image.asset(nameimage),
    ]));
  }
}
