import 'package:flutter_rz_responsive_design_implementation/src/route/rz_app_route.dart';
import 'package:get/get.dart';
import 'package:responsive_builder_kit/responsive_builder_kit.dart';

class AppSidebarController extends GetxController {
  final activeItem = RzAppRoute.defaultRoute.obs;
  final hoverItem = ''.obs;

  void changeActiveItem(String route) => activeItem.value = route;

  void changeHoverItem(String route) {
    if(activeItem.value != route) hoverItem.value = route;
  }

  bool isActive(String route) => activeItem.value == route;
  bool isHovering(String route) => hoverItem.value == route;

  void onTapMenu(String route) {
    if(!isActive(route)) {
      changeActiveItem(route);

      if(Responsive.isMobile(Get.context!)) Get.back();

      Get.toNamed(route);
    }
  }
}