import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../data/app_Colors.dart';
import '../../data/app_text_styles.dart';
import '../onboarding1/controllers/onboarding1_controller.dart';

class OnboardingWidget extends StatelessWidget {
  final String image;
  final String text, coloredText;
  final int index;

  const OnboardingWidget({
    super.key,
    required this.image,
    required this.text,
    required this.coloredText,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Onboarding1Controller>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(child: Image.asset(image, height: 210.h)),
        SizedBox(height: 30.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: text,
            style: AppTextStyles.bold24.copyWith(color: AppColors.blackColor),
            children: <TextSpan>[
              TextSpan(
                text: coloredText,
                style: AppTextStyles.bold24.copyWith(color: AppColors.redColor),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          textAlign: TextAlign.center,
          "Get fresh & healthy meals\n whenever and wherever",
          style: AppTextStyles.medium16.copyWith(color: AppColors.grayColor),
        ),
        SizedBox(height: 80.h),
        SizedBox(
          height: 52.h,
          width: 135.w,
          child: ElevatedButton(
            onPressed: () => controller.nextPage(),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blackColor,
            ),
            child: index == 2
                ? Text(
                    'GET STARTED',
                    style: AppTextStyles.bold14.copyWith(
                      color: AppColors.whitColor),
                    maxLines: 1,
                  )
                : Icon(Icons.arrow_forward_ios, color: AppColors.whitColor),
          ),
        ),
      ],
    );
  }
}
