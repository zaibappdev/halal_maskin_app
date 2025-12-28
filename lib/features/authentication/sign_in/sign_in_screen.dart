import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/lower_image_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/upper_image_widget.dart';
import 'package:halal_maskin_app/features/authentication/sign_in/widgets/sign_in_form_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
          SignInFormWidget(),
          LowerImageWidget(),
        ],
      ),

    );
  }
}
