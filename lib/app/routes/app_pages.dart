import 'package:get/get.dart';

import '../modules/check_mail/bindings/check_mail_binding.dart';
import '../modules/check_mail/views/check_mail_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/location/bindings/location_binding.dart';
import '../modules/location/views/location_view.dart';
import '../modules/onboarding1/bindings/onboarding1_binding.dart';
import '../modules/onboarding1/views/onboarding1_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/verif_pincord/bindings/verif_pincord_binding.dart';
import '../modules/verif_pincord/views/verif_pincord_view.dart';
import '../modules/verify_phone_number/bindings/verify_phone_number_binding.dart';
import '../modules/verify_phone_number/views/verify_phone_number_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING1,
      page: () => const Onboarding1View(),
      binding: Onboarding1Binding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_MAIL,
      page: () => const CheckMailView(),
      binding: CheckMailBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_PHONE_NUMBER,
      page: () => const VerifyPhoneNumberView(),
      binding: VerifyPhoneNumberBinding(),
    ),
    GetPage(
      name: _Paths.VERIF_PINCORD,
      page: () => const VerifPincordView(),
      binding: VerifPincordBinding(),
    ),
    GetPage(
      name: _Paths.LOCATION,
      page: () => const LocationView(),
      binding: LocationBinding(),
    ),
  ];
}
