import 'package:get/get.dart';

import '../controllers/check_mail_controller.dart';

class CheckMailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckMailController>(
      () => CheckMailController(),
    );
  }
}
