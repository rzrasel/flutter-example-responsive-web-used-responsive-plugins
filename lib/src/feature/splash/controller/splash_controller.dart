import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter_rz_responsive_design_implementation/src/route/rz_app_route.dart';

class SplashController extends GetxController {
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();

    _timer = Timer(const Duration(seconds: 3), () {
      Get.offNamed(RzAppRoute.dashboard);
    });
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}