import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/lower_image_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/upper_image_widget.dart';
import 'package:halal_maskin_app/features/authentication/forget_password/widgets/forget_password_form_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
          ForgetPasswordFormWidget(),
          LowerImageWidget(),
        ],
      ),
    );
  }
}
