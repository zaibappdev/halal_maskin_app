import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  final String appImage;
  final double height;
  final double width;

  const AppLogoWidget({
    super.key,
    required this.appImage,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(appImage, height: height, width: width);
  }
}
