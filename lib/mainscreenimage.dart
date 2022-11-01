import 'package:flutter/material.dart';

class mainscreenimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/cars.jpeg",
      fit: BoxFit.fill, //image evi che contain,cover,fill badhu same
    );
  }
}
