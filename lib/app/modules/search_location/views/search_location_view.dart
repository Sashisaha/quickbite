import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/app_Colors.dart';
import '../../../data/app_text_styles.dart';
import '../controllers/search_location_controller.dart';

class SearchLocationView extends GetView<SearchLocationController> {
  const SearchLocationView({super.key});

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
                  "Find restaurants near you",
                  style: AppTextStyles.bold28,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "Simply enter your location and explore a list of top-rated restaurants in the area.",
                style: AppTextStyles.medium16.copyWith(
                  color: AppColors.grayColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              Text("Search location", style: AppTextStyles.medium16),
              SizedBox(height: 12.h),
              TextFormField(
                decoration: InputDecoration(
                 prefixIcon: Icon(Icons.location_on_outlined),
                  hintText: "Mill river"
                ),
              ),
              SizedBox(height: 13.h,),
            ],
          ),
        ),
      ),
    );
  }
}
