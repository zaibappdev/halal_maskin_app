import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';
import '../constants/app_styles.dart';

class AppThemes {
  // ---------- Light Theme ----------
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white900,
    primaryColor: AppColors.blue600,
    colorScheme: const ColorScheme.light(
      primary: AppColors.blue600,
      secondary: AppColors.indigo400,
      surface: AppColors.white900,
      onPrimary: AppColors.white900,
      onSecondary: AppColors.black900,
      onSurface: AppColors.black900,
    ),

    textTheme: TextTheme(
      displayLarge: AppStyles.poppinsBold(
        fontSize: AppSizes.font6xl,
        color: AppColors.black900,
      ),
      displayMedium: AppStyles.poppinsSemiBold(
        fontSize: AppSizes.font4xl,
        color: AppColors.black800,
      ),
      displaySmall: AppStyles.poppinsRegular(
        fontSize: AppSizes.font3xl,
        color: AppColors.black800,
      ),
      headlineLarge: AppStyles.poppinsSemiBold(
        fontSize: AppSizes.font2xl,
        color: AppColors.black800,
      ),
      headlineMedium: AppStyles.poppinsRegular(
        fontSize: AppSizes.fontXl,
        color: AppColors.black800,
      ),
      bodyLarge: AppStyles.poppinsRegular(
        fontSize: AppSizes.fontMd,
        color: AppColors.black700,
      ),
      bodyMedium: AppStyles.poppinsRegular(
        fontSize: AppSizes.fontSm,
        color: AppColors.black600,
      ),
      labelLarge: AppStyles.poppinsSemiBold(
        fontSize: AppSizes.fontMd,
        color: AppColors.white900,
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.blue600,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.white900),
      titleTextStyle: TextStyle(
        color: AppColors.white900,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),

    iconTheme: const IconThemeData(color: AppColors.black800),
    dividerColor: AppColors.grey200,
  );

  // ---------- Dark Theme ----------
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black900,
    primaryColor: AppColors.blue400,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.blue400,
      secondary: AppColors.indigo300,
      surface: AppColors.black800,
      onPrimary: AppColors.black900,
      onSecondary: AppColors.white900,
      onSurface: AppColors.white900,
    ),

    textTheme: TextTheme(
      displayLarge: AppStyles.poppinsBold(
        fontSize: AppSizes.font6xl,
        color: AppColors.white900,
      ),
      displayMedium: AppStyles.poppinsSemiBold(
        fontSize: AppSizes.font4xl,
        color: AppColors.white900,
      ),
      displaySmall: AppStyles.poppinsRegular(
        fontSize: AppSizes.font3xl,
        color: AppColors.white700,
      ),
      headlineLarge: AppStyles.poppinsSemiBold(
        fontSize: AppSizes.font2xl,
        color: AppColors.white900,
      ),
      headlineMedium: AppStyles.poppinsRegular(
        fontSize: AppSizes.fontXl,
        color: AppColors.white700,
      ),
      bodyLarge: AppStyles.poppinsRegular(
        fontSize: AppSizes.fontMd,
        color: AppColors.white700,
      ),
      bodyMedium: AppStyles.poppinsRegular(
        fontSize: AppSizes.fontSm,
        color: AppColors.white600,
      ),
      labelLarge: AppStyles.poppinsSemiBold(
        fontSize: AppSizes.fontMd,
        color: AppColors.black900,
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.black800,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.white900),
      titleTextStyle: TextStyle(
        color: AppColors.white900,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),

    iconTheme: const IconThemeData(color: AppColors.white900),
    dividerColor: AppColors.grey700,
  );
}
