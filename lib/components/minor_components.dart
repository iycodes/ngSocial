import 'package:flutter/material.dart';

class StaticAsset extends StatelessWidget {
  final String name;
  final double width;
  double? height;
  StaticAsset(this.name, this.width, {super.key});

  StaticAsset.dimensions(
      {required this.name,
      required this.width,
      required this.height,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/$name.png"),
      width: width,
      height: height ?? width,
    );
  }
}
