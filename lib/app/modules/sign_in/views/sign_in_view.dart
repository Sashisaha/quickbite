import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quickbite/app/data/app_Colors.dart';
import 'package:quickbite/app/data/app_text_styles.dart';
import 'package:quickbite/app/data/image_path.dart';
import '../../../routes/app_pages.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(ImagePath.splashScreen, height: 32.h)),
                SizedBox(height: 24.h),
                Text(
                  "Sign in, we’ll do the cooking...",
                  style: AppTextStyles.bold28,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.h),
                Center(
                  child: Text(
                    "Don’t have an account?",
                    style: AppTextStyles.medium16.copyWith(
                      color: AppColors.grayColor,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: GestureDetector(
                    onTap: () {Get.toNamed(Routes.SIGN_UP);},
                    child: Text(
                      "Sign up",
                      style: AppTextStyles.medium16.copyWith(
                        color: AppColors.redColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Text("Email", style: AppTextStyles.medium16),
                SizedBox(height: 5.h),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "gladys@domain.com",
                    suffixIcon: Icon(Icons.alternate_email),
                  ),
                ),
                SizedBox(height: 24.h),
                Text("Password", style: AppTextStyles.medium16),
                SizedBox(height: 5.h),
                Obx(() => TextFormField(
                    obscureText: controller.isObscure.value,
                    decoration: InputDecoration(
                      hintText: "*******",
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isObscure.value
                              ? Icons.visibility_off_outlined
                              : Icons.remove_red_eye_outlined,
                        ),
                        onPressed: controller.togglePassword,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.only(left: 225.w),
                  child: GestureDetector(onTap: () {Get.toNamed(Routes.FORGOT_PASSWORD);},
                      child: Text("Forgot password?", style: AppTextStyles.medium14)),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  height: 51.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {Get.toNamed(Routes.HOME);},
                    child: Text(
                      "SIGN IN",
                      style: AppTextStyles.medium14.copyWith(
                        color: AppColors.whitColor,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Center(
                  child: Text(
                    "Or connect with...",
                    style: AppTextStyles.medium14,
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 156.w,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Google"),
                            SizedBox(width: 10.w),
                            Image.asset(ImagePath.logosGoogleIcon, height: 20.h),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48.h,
                      width: 156.w,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Facebook"),
                            SizedBox(width: 10.w),
                            Image.asset(ImagePath.logosFacebook, height: 20.h),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
