import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/constants/app_assets.dart';

class UpperImageWidget extends StatefulWidget {
  const UpperImageWidget({super.key});

  @override
  State<UpperImageWidget> createState() => _UpperImageWidgetState();
}

class _UpperImageWidgetState extends State<UpperImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -1,
      right: -1,
      child: Image.asset(
        AppAssets.welcomeUpperImage,
        width: 250,
        height: 250,
      ),
    );
  }
}
