import 'dart:async';
import 'package:get/get.dart';

class CheckMailController extends GetxController {
  RxInt seconds = 34.obs;
  RxBool canResend = false.obs;
  Timer? _timer;

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  void startTimer() {
    canResend.value = false;
    seconds.value = 34;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds.value > 0) {
        seconds.value--;
      } else {
        canResend.value = true;
        timer.cancel();
      }
    });
  }

  void resendLink() {
    if (!canResend.value) return;

    startTimer();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
