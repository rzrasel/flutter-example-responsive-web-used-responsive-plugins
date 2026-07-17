import 'package:flutter/material.dart';
import 'package:flutter_rz_responsive_design_implementation/src/component/app/sidebar/app_sidebar_menu_item.dart';
import 'package:rz_theme_set_1/rz_theme_set_1.dart';

import 'model/app_sidebar_item_model.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key, required this.sidebarItems});

  final List<AppSidebarItemModel> sidebarItems;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: RzTheme.color.backgroundColor.fullWhite,
          border: Border(
            right: BorderSide(color: RzTheme.color.borderColor.gray, width: 1),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: RzTheme.size.smGet),
              SizedBox(height: RzTheme.size.spaceBetweenItemGet),
              Padding(
                padding: EdgeInsets.all(RzTheme.size.mdGet),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Menu",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2),
                    ),

                    /// Menu Items
                    /*AppSidebarMenuItem(itemName: "Home", icon: Iconsax.home, route: RzAppRoute.home,),
                    AppSidebarMenuItem(itemName: "Login", icon: Iconsax.login, route: RzAppRoute.login,),*/
                    /*for (final item in sidebarItems)
                      AppSidebarMenuItem(itemName: item.title, icon: item.icon, route: item.route,),*/
                    ...sidebarItems.map(
                      (item) => AppSidebarMenuItem(
                        itemName: item.title,
                        icon: item.icon,
                        route: item.route,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
