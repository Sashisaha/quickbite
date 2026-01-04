import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:quickbite/app/data/app_text_styles.dart';

import '../../../data/app_Colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/verify_phone_number_controller.dart';

class VerifyPhoneNumberView extends GetView<VerifyPhoneNumberController> {
  const VerifyPhoneNumberView({super.key});

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
              Text(
                "Get started with phone number",
                style: AppTextStyles.bold28,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              Text(
                "Enter your phone number to use Quickbite and enjoy your food.",
                style: AppTextStyles.medium16.copyWith(
                  color: AppColors.grayColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.h),
              Text("Phone number", style: AppTextStyles.medium16),
              SizedBox(height: 5.h),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "+1234567890",
                  prefixIcon: Icon(Icons.mail_outline),
                  suffixIcon: Icon(Icons.alternate_email),
                ),
              ),
              SizedBox(height: 37.h),
              SizedBox(
                height: 51.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {Get.toNamed(Routes.VERIF_PINCORD);},
                  child: Text(
                    "GET CODE",
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
