import 'package:flutter_rz_responsive_design_implementation/src/feature/dashboard/screen/dashboard_screen.dart';
import 'package:flutter_rz_responsive_design_implementation/src/feature/splash/screen/splash_screen.dart';
import 'package:flutter_rz_responsive_design_implementation/src/feature/user_registration/user_registration_screen.dart';
import 'package:flutter_rz_responsive_design_implementation/src/route/rz_app_route.dart';
import 'package:get/get.dart';

class RzAppRoutePage {
  const RzAppRoutePage._();
  static final List<GetPage> pages = [
    GetPage(name: RzAppRoute.splash, page: () => SplashScreen()),
    GetPage(name: RzAppRoute.home, page: () => DashboardScreen()),
    GetPage(name: RzAppRoute.dashboard, page: () => DashboardScreen()),
    GetPage(name: RzAppRoute.userRegistration, page: () => UserRegistrationScreen()),
    /*GetPage(name: RzAppRoute.home, page: () => HomeScreen(), middlewares: [RzAppRouteMiddleware()]),
    GetPage(name: RzAppRoute.login, page: () => LoginScreen()),
    GetPage(name: RzAppRoute.forgetPassword, page: () => ForgetPasswordScreen()),
    GetPage(name: RzAppRoute.resetPassword, page: () => ResetPasswordScreen()),*/
  ];
}