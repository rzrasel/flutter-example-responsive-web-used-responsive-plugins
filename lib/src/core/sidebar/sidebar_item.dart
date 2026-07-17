import 'package:flutter_rz_responsive_design_implementation/src/component/app/sidebar/model/app_sidebar_item_model.dart';
import 'package:flutter_rz_responsive_design_implementation/src/route/rz_app_route.dart';
import 'package:iconsax/iconsax.dart';

class SidebarItem {
  static List<AppSidebarItemModel> build() {
    return [
      AppSidebarItemModel(
        title: "Home",
        icon: Iconsax.home,
        route: RzAppRoute.home,
      ),
      AppSidebarItemModel(
        title: "Registration",
        icon: Iconsax.user_add1,
        route: RzAppRoute.userRegistration,
      ),
      AppSidebarItemModel(
        title: "Login",
        icon: Iconsax.login,
        route: RzAppRoute.userLogin,
      ),
    ];
  }
}