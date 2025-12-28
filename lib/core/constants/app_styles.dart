import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_sizes.dart';

class AppStyles {
  static const String _fontFamily = 'Poppins';

  // ---------- Base ----------
  static TextStyle poppins({
    double fontSize = AppSizes.fontMd,
    Color color = AppColors.black900,
    FontWeight weight = FontWeight.w400,
  }) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: fontSize,
      fontWeight: weight,
      color: color,
    );
  }

  // ---------- Quick Access ----------
  static TextStyle poppinsRegular({
    double fontSize = AppSizes.fontMd,
    Color color = AppColors.black900,
  }) => poppins(fontSize: fontSize, color: color, weight: FontWeight.w400);

  static TextStyle poppinsSemiBold({
    double fontSize = AppSizes.fontMd,
    Color color = AppColors.black900,
  }) => poppins(fontSize: fontSize, color: color, weight: FontWeight.w600);

  static TextStyle poppinsBold({
    double fontSize = AppSizes.fontMd,
    Color color = AppColors.black900,
  }) => poppins(fontSize: fontSize, color: color, weight: FontWeight.w700);
}

/*
AppStyles.poppinsBold()
AppStyles.poppinsSemiBold()
AppStyles.poppinsMedium()

Text(
  "Hello Boss!",
  style: AppStyles.poppins(
    fontSize: AppSizes.fontLg,
    color: AppColors.red600,
    weight: FontWeight.w500,
  ),
),

// Responsive
fontSize: AppSizes.responsive(context, AppSizes.fontLg)
*/
