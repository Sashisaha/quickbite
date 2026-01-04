import 'package:get/get.dart';

class SignInController extends GetxController {
  RxBool isObscure = true.obs;

  void togglePassword() {
    isObscure.value = !isObscure.value;
  }
}
