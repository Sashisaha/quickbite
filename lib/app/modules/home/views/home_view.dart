import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quickbite/app/data/app_Colors.dart';
import 'package:quickbite/app/data/app_text_styles.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 192.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "40% OFF",
                        style: AppTextStyles.bold20.copyWith(
                          color: AppColors.whitColor,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "For ordering more than 4\ntimes last month",
                        style: AppTextStyles.medium14.copyWith(
                          color: AppColors.whitColor,
                        ),
                      ),
                      SizedBox(height: 22.h),
                      Container(
                        height: 37.h,
                        width: 99.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.whitColor,
                        ),
                        child: Center(
                          child: Text(
                            "Claim now",
                            style: AppTextStyles.medium14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.h,),
              Text("Featured restaurants",style: AppTextStyles.medium20,),
              SizedBox(height: 10.h,),



            ],
          ),
        ),
      ),
    );
  }
}
