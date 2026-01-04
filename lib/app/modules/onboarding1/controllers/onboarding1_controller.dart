import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class Onboarding1Controller extends GetxController {
  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  void onPageChanged(int index) => currentIndex.value = index;

  void nextPage() {
    if (currentIndex.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed(Routes.SIGN_IN);
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
