import 'package:flutter/material.dart';
import 'package:halal_maskin_app/features/authentication/password_changed/widgets/password_changed_form_widget.dart';
import '../../../core/common_widgets/lower_image_widget.dart';
import '../../../core/common_widgets/upper_image_widget.dart';

class PasswordChangedScreen extends StatefulWidget {
  const PasswordChangedScreen({super.key});

  @override
  State<PasswordChangedScreen> createState() => _PasswordChangedScreenState();
}

class _PasswordChangedScreenState extends State<PasswordChangedScreen> {
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
          PasswordChangedFormWidget(),
          LowerImageWidget(),
        ],
      ),
    );
  }
}
