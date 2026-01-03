import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/lower_image_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/upper_image_widget.dart';
import 'package:halal_maskin_app/features/authentication/reset_password/widgets/reset_password_form_widget.dart';

class ResetPasswordScreens extends StatefulWidget {
  const ResetPasswordScreens({super.key});

  @override
  State<ResetPasswordScreens> createState() => _ResetPasswordScreensState();
}

class _ResetPasswordScreensState extends State<ResetPasswordScreens> {
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
          ResetPasswordFormWidget(),
          LowerImageWidget(),
        ],
      ),
    );
  }
}
