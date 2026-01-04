import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_Colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../data/image_path.dart';
import '../../../routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

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
                Text(
                  "Sign up, Your meal awaits",
                  style: AppTextStyles.bold28,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.h),
                Center(
                  child: Text(
                    "Have an account?",
                    style: AppTextStyles.medium16.copyWith(
                      color: AppColors.grayColor,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.SIGN_IN);
                    },
                    child: Text(
                      "Sign in",
                      style: AppTextStyles.medium16.copyWith(
                        color: AppColors.redColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Text("Username", style: AppTextStyles.medium16),
                SizedBox(height: 5.h),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Gladys",
                    suffixIcon: Icon(Icons.alternate_email),
                  ),
                ),
                SizedBox(height: 24.h),
                Text("Email", style: AppTextStyles.medium16),
                SizedBox(height: 5.h),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "gladys@domain.com",
                    suffixIcon: Icon(Icons.cloud_outlined),
                  ),
                ),
                SizedBox(height: 24.h),
                Text("Password", style: AppTextStyles.medium16),
                SizedBox(height: 5.h),
                Obx(
                  () => TextFormField(
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
                SizedBox(
                  height: 51.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {Get.toNamed(Routes.VERIFY_PHONE_NUMBER);},
                    child: Text(
                      "SIGN UP",
                      style: AppTextStyles.medium14.copyWith(
                        color: AppColors.whitColor,
                      ),
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
                            Image.asset(
                              ImagePath.logosGoogleIcon,
                              height: 20.h,
                            ),
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
                SizedBox(height: 18.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "By signing up, you have agreed to our \n",
                      style:AppTextStyles.medium14.copyWith(
                        color: AppColors.blackColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "             Terms ",
                          style: AppTextStyles.medium14.copyWith(
                            color: AppColors.blueColor,
                          ),
                        ),
                        TextSpan(
                          text: "& ",
                          style: AppTextStyles.medium14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy policy",
                          style: AppTextStyles.medium14.copyWith(
                            color: AppColors.blueColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
