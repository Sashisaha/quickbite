import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../data/app_Colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../controllers/verif_pincord_controller.dart';

class VerifPincordView extends GetView<VerifPincordController> {
  const VerifPincordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.all(16.sp),
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
                  "Verify phone number",
                  style: AppTextStyles.bold28,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "Enter your phone number to use Quickbite and enjoy your food.",
                style: AppTextStyles.medium16.copyWith(color: AppColors.grayColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.h),
              Center(child: Text("Didn't receive?",style: AppTextStyles.medium16.copyWith(color: AppColors.redColor),)),
              SizedBox(height: 38.h,),
              PinCodeTextField(appContext: context,
                  length:4,
                enableActiveFill: true,
                backgroundColor: Colors.transparent,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  selectedFillColor: AppColors.blueColor,
                  inactiveFillColor: AppColors.textFieldColor,
                  inactiveColor: AppColors.textFieldColor,
                  activeFillColor: AppColors.textFieldColor,
                  activeColor: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 49.h,
                  fieldWidth: 60.w
                ),),
              SizedBox(height: 38.h,),
              SizedBox(
                height: 51.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {Get.toNamed(Routes.LOCATION);},
                  child: Text(
                    "SIGN UP",
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
