import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/elevated_button_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/out_lined_button_widget.dart';
import 'package:halal_maskin_app/routes/app_paths.dart';
import 'package:halal_maskin_app/routes/navigation_services.dart';
import '../../../../core/common_widgets/app_logo_widget.dart';
import '../../../../core/common_widgets/text_field_widget.dart';
import '../../../../core/constants/app_assets.dart';

class SignInFormWidget extends StatefulWidget {
  const SignInFormWidget({super.key});

  @override
  State<SignInFormWidget> createState() => _SignInFormWidgetState();
}

class _SignInFormWidgetState extends State<SignInFormWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Check box
  bool isChecked = false;

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
              "Log In",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 20),

            // Email Text field
            TextFieldWidget(
              controller: emailController,
              label: "Email",
              hintText: "example@gmail.com",
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 15),

            // Password Text field
            TextFieldWidget(
              controller: passwordController,
              label: "Password",
              hintText: "Enter Your Password",
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
            ),

            // Check box & Text
            Row(
              children: [
                // Check box
                Transform.scale(
                  scale: 1.1,
                  child: Checkbox(
                    activeColor: Color(0xFF00A24C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    value: isChecked,
                    onChanged: (checkStatus) {
                      setState(() {
                        isChecked = checkStatus!;
                      });
                    },
                  ),
                ),

                Text(
                  "Remember Me",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Spacer(),

                TextButton(
                  onPressed: () {
                    NavigationServices.push(AppPaths.forgotPassword);
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Login button
            ElevatedButtonWidget(
              height: 48,
              width: 348,
              onPressed: () {
                NavigationServices.push(AppPaths.dashboard);
              },
              text: "Login",
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
              text: "Login with Google",
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
                    NavigationServices.go(AppPaths.signUp);
                  },
                  child: Text(
                    "Sign Up",
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
