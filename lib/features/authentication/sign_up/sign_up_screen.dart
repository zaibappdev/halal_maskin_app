import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/lower_image_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/upper_image_widget.dart';
import 'package:halal_maskin_app/features/authentication/sign_up/widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,

      // Body
      body: Stack(
        fit: StackFit.expand,
        children: [
          UpperImageWidget(),
          SignUpFormWidget(),
          LowerImageWidget(),
        ],
      ),
    );
  }
}
