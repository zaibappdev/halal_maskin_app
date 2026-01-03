import 'package:flutter/material.dart';
import '../../../../core/common_widgets/app_logo_widget.dart';
import '../../../../core/common_widgets/elevated_button_widget.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../routes/app_paths.dart';
import '../../../../routes/navigation_services.dart';

class PasswordChangedFormWidget extends StatefulWidget {
  const PasswordChangedFormWidget({super.key});

  @override
  State<PasswordChangedFormWidget> createState() =>
      _PasswordChangedFormWidgetState();
}

class _PasswordChangedFormWidgetState extends State<PasswordChangedFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // App Logo
            AppLogoWidget(appImage: AppAssets.logo, height: 129, width: 129),

            const SizedBox(height: 90),

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
              "Your Password has been changed successfully",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 35),

            // Send Code Button
            ElevatedButtonWidget(
              height: 48,
              width: 312,
              text: "Back to Login",
              onPressed: () {
                NavigationServices.go(AppPaths.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
