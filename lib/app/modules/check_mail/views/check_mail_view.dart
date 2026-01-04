import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:quickbite/app/data/app_text_styles.dart';

import '../../../data/app_Colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/check_mail_controller.dart';

class CheckMailView extends GetView<CheckMailController> {
  const CheckMailView({super.key});

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
                child: Text("Check your mail", style: AppTextStyles.bold28),
              ),
              SizedBox(height: 16.h),
              Text(
                "We have just sent a instructions email gladys@domain.com.",
                style: AppTextStyles.medium16.copyWith(
                  color: AppColors.grayColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.h),
              Center(
                child: Text(
                  "Having a problem?",
                  style: AppTextStyles.medium16.copyWith(
                    color: AppColors.redColor,),
                ),
              ),
              SizedBox(height: 45.h,),
              SizedBox(
                height: 51.h,
                width: double.infinity,
                child: Obx(() =>
                    ElevatedButton(
                    onPressed: controller.canResend.value
                        ? controller.resendLink
                        : null,
                    child: Text(
                      "RESEND LINK",
                      style: AppTextStyles.bold14.copyWith(
                        color: AppColors.whitColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Center(
                child: Obx(() =>
                    Text(
                    controller.canResend.value
                        ? "You can resend now"
                        : "Resend in : ${controller.seconds.value}s",
                    style: AppTextStyles.medium14.copyWith(
                      color: AppColors.blueColor,
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
