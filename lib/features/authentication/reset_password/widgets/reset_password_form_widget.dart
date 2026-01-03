import 'package:flutter/material.dart';
import '../../../../core/common_widgets/app_logo_widget.dart';
import '../../../../core/common_widgets/elevated_button_widget.dart';
import '../../../../core/common_widgets/text_field_widget.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../routes/app_paths.dart';
import '../../../../routes/navigation_services.dart';

class ResetPasswordFormWidget extends StatefulWidget {
  const ResetPasswordFormWidget({super.key});

  @override
  State<ResetPasswordFormWidget> createState() =>
      _ResetPasswordFormWidgetState();
}

class _ResetPasswordFormWidgetState extends State<ResetPasswordFormWidget> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
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

            // Password 1
            TextFieldWidget(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              hintText: "Enter New Password",
            ),

            const SizedBox(height: 20),

            // Password 2
            TextFieldWidget(
              controller: confirmPasswordController,
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              hintText: "Repeat New Password",
            ),

            const SizedBox(height: 30),

            // Send Code Button
            ElevatedButtonWidget(
              height: 48,
              width: 312,
              text: "Reset Password",
              onPressed: () {
                NavigationServices.push(AppPaths.passwordChanged);
              },
            ),
          ],
        ),
      ),
    );
  }
}
