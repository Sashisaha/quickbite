import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickbite/app/data/app_Colors.dart';
import 'package:quickbite/app/data/app_text_styles.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.whitColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whitColor,
      iconTheme: IconThemeData(color: AppColors.whitColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.redColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.textFieldColor,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColors.textFieldColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.textFieldColor),
        borderRadius: BorderRadius.circular(8.r),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(10.sp),
        textStyle: AppTextStyles.bold14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8.r),
        ),
        side: BorderSide(color: AppColors.textFieldColor,width:3.w),
      ),
    ),
  );
}
