import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quickbite/app/data/app_Colors.dart';
import 'package:quickbite/app/data/app_text_styles.dart';
import 'package:quickbite/app/data/image_path.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../routes/app_pages.dart';
import '../../common_witget/on_boarding_widget.dart';
import '../controllers/onboarding1_controller.dart';
class Onboarding1View extends GetView<Onboarding1Controller> {
  const Onboarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: [
              OnboardingWidget(
                image: ImagePath.onboardingPic1,
                text: "Satisfy your cravings\n with ",
                coloredText: "ease",
                index: 0,
              ),
              OnboardingWidget(
                image: ImagePath.onboardingPic2,
                text: "Discover restaurants\n with",
                coloredText: " just a tap",
                index: 1,
              ),
              OnboardingWidget(
                image: ImagePath.onboardingPic3,
                text: "Get meals delivered to\n your",
                coloredText: " doorstep",
                index: 2,
              ),
            ],
          ),
          Positioned(
            bottom: 250.h,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller.pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  expansionFactor: 2,
                  dotHeight: 10.h,
                  dotWidth: 10.w,
                  spacing: 7.w,
                  activeDotColor: AppColors.redColor,
                  dotColor: AppColors.grayColor,
                  radius:20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
