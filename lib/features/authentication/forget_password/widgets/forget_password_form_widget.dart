import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/elevated_button_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/text_field_widget.dart';
import 'package:halal_maskin_app/routes/app_paths.dart';
import 'package:halal_maskin_app/routes/navigation_services.dart';
import '../../../../core/common_widgets/app_logo_widget.dart';
import '../../../../core/constants/app_assets.dart';

class ForgetPasswordFormWidget extends StatefulWidget {
  const ForgetPasswordFormWidget({super.key});

  @override
  State<ForgetPasswordFormWidget> createState() =>
      _ForgetPasswordFormWidgetState();
}

class _ForgetPasswordFormWidgetState extends State<ForgetPasswordFormWidget> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 80),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            AppLogoWidget(appImage: AppAssets.logo, height: 129, width: 129),

            const SizedBox(height: 20),

            // Text
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 20),

            // Text
            Text(
              "Don’t worry! It happens. Please enter the email associated with your account.",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Email
            TextFieldWidget(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              hintText: "Enter Your Email",
            ),

            const SizedBox(height: 20),

            // Send Code Button
            ElevatedButtonWidget(
              height: 48,
              width: 312,
              text: "Send Code",
              onPressed: () {
                NavigationServices.push(AppPaths.resetPassword);
              },
            ),
          ],
        ),
      ),
    );
  }
}
