import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print("SplashController onInit called"); // 👈 DEBUG
    Future.delayed(const Duration(seconds: 3), () {
      print("Navigating to Onboarding1"); // 👈 DEBUG
      Get.offAllNamed(Routes.ONBOARDING1);
    });
  }
}
