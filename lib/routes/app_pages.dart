import 'package:digital_academy/components/core/core_component.dart';
import 'package:digital_academy/components/illustration/illustration_component.dart';
import 'package:digital_academy/components/login/login_component.dart';
import 'package:digital_academy/components/otp/otp_component.dart';
import 'package:digital_academy/components/signup/signup_component.dart';
import 'package:digital_academy/components/splash/splash_component.dart';
import 'package:digital_academy/components/welcome/welcome_component.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.CORE,
      page: () => CoreComponent(),
    ),
    GetPage(
      name: Routes.ILLUSTRATION,
      page: () => IllustrationComponent(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeComponent(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginComponent(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OTPComponent(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignUpComponent(),
    ),
  ];
}
