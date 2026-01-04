import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quickbite/app/data/app_text_styles.dart';
import 'package:quickbite/app/data/image_path.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {

  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImagePath.splashScreen,height: 40.h,),
                SizedBox(width: 16.w,),
                Text("Quickbite",style:AppTextStyles.bold30),
              ],
            )
          ),
        ),
      ),
    );
  }
}
