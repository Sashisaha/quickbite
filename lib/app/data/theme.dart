import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickbite/app/data/app_Colors.dart';
import 'app_text_styles.dart';

ThemeData themeData() {
  return ThemeData(
      scaffoldBackgroundColor: AppColors.whitColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.whitColor,
        iconTheme: IconThemeData(color: AppColors.whitColor),
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: const Color(0xFFC0C6CD),
        foregroundColor: AppColors.blackColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whitColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.grayColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.textFieldColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.textFieldColor),
      ),
      hintStyle: const TextStyle(color: AppColors.hintTextColor),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.whitColor,
        foregroundColor: AppColors.blackColor,
        padding: EdgeInsets.symmetric(vertical: 8.h),
        side: const BorderSide(
          color: AppColors.grayColor,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
       // textStyle:AppTextStyles.medium16,
      ),
    ),
  );
}
