import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/lower_image_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/upper_image_widget.dart';
import 'package:halal_maskin_app/features/authentication/welcome/widgets/welcome_middle_section_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Body
      body: Stack(
        fit: StackFit.expand,
        children: [
          UpperImageWidget(),
          WelcomeMiddleSectionWidget(),
          LowerImageWidget(),
        ],
      ),
    );
  }
}
