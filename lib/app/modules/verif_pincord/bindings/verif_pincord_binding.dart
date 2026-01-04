import 'package:get/get.dart';

import '../controllers/verif_pincord_controller.dart';

class VerifPincordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifPincordController>(
      () => VerifPincordController(),
    );
  }
}
