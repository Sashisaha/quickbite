import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:quickbite/app/data/app_Colors.dart';
import 'package:quickbite/app/data/app_text_styles.dart';

import '../../../routes/app_pages.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.blackColor,
                  size: 24,
                ),
              ),
              SizedBox(height: 28.h),
              Center(
                child: Text(
                  "Password reset link",
                  style: AppTextStyles.bold28,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "Enter your email address and we will send you the reset link",
                style: AppTextStyles.medium16.copyWith(
                  color: AppColors.grayColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.h),
              Text("Email", style: AppTextStyles.medium16),
              SizedBox(height: 12.h),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "gladys@domain.com",
                  suffix: Icon(Icons.alternate_email),
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                height: 51.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {Get.toNamed(Routes.CHECK_MAIL);},
                  child: Text(
                    "RESET PASSWORD",
                    style: AppTextStyles.bold14.copyWith(
                      color: AppColors.whitColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
