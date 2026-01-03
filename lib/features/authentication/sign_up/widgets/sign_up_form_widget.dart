import 'package:flutter/material.dart';
import 'package:halal_maskin_app/routes/app_paths.dart';
import 'package:halal_maskin_app/routes/navigation_services.dart';
import '../../../../core/common_widgets/app_logo_widget.dart';
import '../../../../core/common_widgets/elevated_button_widget.dart';
import '../../../../core/common_widgets/out_lined_button_widget.dart';
import '../../../../core/common_widgets/text_field_widget.dart';
import '../../../../core/constants/app_assets.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({super.key});

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

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
              "Create an account",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 20),

            // Username
            TextFieldWidget(
              controller: usernameController,
              hintText: "Enter Your Username",
              keyboardType: TextInputType.name,
            ),

            const SizedBox(height: 10),

            // Email
            TextFieldWidget(
              controller: emailController,
              hintText: "Enter Your Email",
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 10),

            // Phone Number
            TextFieldWidget(
              controller: passwordController,
              hintText: "Enter Your Phone Number",
              keyboardType: TextInputType.phone,
            ),

            const SizedBox(height: 10),

            // Password
            TextFieldWidget(
              controller: passwordController,
              hintText: "Enter Your Password",
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
            ),

            const SizedBox(height: 20),

            // Login button
            ElevatedButtonWidget(
              height: 48,
              width: 348,
              onPressed: () {
                NavigationServices.go(AppPaths.login);
              },
              text: "Sign Up",
            ),

            const SizedBox(height: 20),

            // Divider / Text / Divider
            Row(
              children: [
                // Left Divider
                Expanded(
                  child: Divider(indent: 18, color: Colors.grey, thickness: 1),
                ),

                // Text in the center
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "or continue with",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Right Divider
                Expanded(
                  child: Divider(
                    endIndent: 19,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Login With Google
            OutLinedButtonWidget(
              height: 48,
              width: 348,
              text: "Signup with Google",
              onPressed: () {},
              image: "assets/logos/google_logo.png",
            ),

            const SizedBox(height: 20),

            // Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                TextButton(
                  onPressed: () {
                    NavigationServices.go(AppPaths.login);
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
