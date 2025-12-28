import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/app_logo_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/elevated_button_widget.dart';
import 'package:halal_maskin_app/core/common_widgets/out_lined_button_widget.dart';
import 'package:halal_maskin_app/core/constants/app_assets.dart';
import 'package:halal_maskin_app/routes/app_paths.dart';
import 'package:halal_maskin_app/routes/navigation_services.dart';

class WelcomeMiddleSectionWidget extends StatefulWidget {
  const WelcomeMiddleSectionWidget({super.key});

  @override
  State<WelcomeMiddleSectionWidget> createState() =>
      _WelcomeMiddleSectionWidgetState();
}

class _WelcomeMiddleSectionWidgetState
    extends State<WelcomeMiddleSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // App Logo
          AppLogoWidget(appImage: AppAssets.logo, height: 129, width: 129),

          // Elevated Buttons
          Column(
            children: [
              ElevatedButtonWidget(
                height: 48,
                width: double.infinity,
                text: 'Log In',
                onPressed: () {
                  NavigationServices.push(AppPaths.login);
                },
              ),

              const SizedBox(height: 10),

              OutLinedButtonWidget(
                height: 48,
                width: double.infinity,
                text: "Sign Up",
                onPressed: (){
                  NavigationServices.push(AppPaths.signUp);
                },
              ),

            ],
          ),
        ],
      ),
    );
  }
}
