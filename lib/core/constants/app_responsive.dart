import 'package:flutter/material.dart';

class AppResponsive {
  /// Returns a scaled value based on screen width.
  static double scale(BuildContext context, double value) {
    final width = MediaQuery.of(context).size.width;

    // Mobile scaling
    if (width < 320) return value * 0.7; // Very small phones
    if (width < 380) return value * 0.8; // Small phones
    if (width < 480) return value * 0.9; // Medium phones
    if (width < 600) return value;       // Normal phones
    if (width < 900) return value * 1.1; // Tablets
    return value * 1.2;                  // Large screens or web
  }

  /// Returns true if current screen is mobile size
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  /// Returns true if current screen is tablet size
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
          MediaQuery.of(context).size.width < 900;

  /// Returns true if current screen is desktop size
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 900;
}

/*
Anywhere you want to make a size responsive — spacing, font, icon, etc. — just call:
final size = AppResponsive.scale(context, AppSizes.fontLg);

or for padding:
padding: EdgeInsets.all(AppResponsive.scale(context, AppSizes.space16)),

or font size in TextStyle:
style: TextStyle(fontSize: AppResponsive.scale(context, AppSizes.fontMd),),

or icon:
Icon(Icons.home,size: AppResponsive.scale(context, AppSizes.iconLg),),
*/