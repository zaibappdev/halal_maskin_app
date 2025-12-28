import 'package:flutter/cupertino.dart';
import 'package:halal_maskin_app/core/constants/app_assets.dart';

class LowerImageWidget extends StatefulWidget {
  const LowerImageWidget({super.key});

  @override
  State<LowerImageWidget> createState() => _LowerImageWidgetState();
}

class _LowerImageWidgetState extends State<LowerImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -1,
      left: -1,
      child: Image.asset(
        AppAssets.welcomeLowerImage,
        width: 250,
        height: 250,
      ),
    );
  }
}
