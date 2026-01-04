import 'package:get/get.dart';

class SignUpController extends GetxController {
 RxBool isObscure =true.obs;

 void togglePassword(){
   isObscure.value =!isObscure.value;
 }
}
