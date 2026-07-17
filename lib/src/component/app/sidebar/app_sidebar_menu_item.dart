import 'package:flutter/material.dart';
import 'package:flutter_rz_responsive_design_implementation/src/component/app/sidebar/app_sidebar_controller.dart';
import 'package:get/get.dart';
import 'package:rz_theme_set_1/rz_theme_set_1.dart';

class AppSidebarMenuItem extends StatelessWidget {
  const AppSidebarMenuItem({
    super.key,
    required this.itemName,
    required this.icon,
    required this.route,
  });

  final String itemName;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(AppSidebarController());

    return InkWell(
      //onTap: () {},
      onTap: () => menuController.onTapMenu(route),
      onHover: (hovering) => hovering
          ? menuController.changeHoverItem(route)
          : menuController.changeHoverItem(""),
      child: Obx(
        () => Padding(
          padding: EdgeInsets.symmetric(vertical: RzTheme.size.sxsGet),
          child: Container(
            decoration: BoxDecoration(
              //color: Colors.transparent,
              color:
                  (menuController.isHovering(route) ||
                      menuController.isActive(route))
                  ? RzTheme.color.theme.primary
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(RzTheme.size.cardRadiusMdGet),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Icon
                Padding(
                  padding: EdgeInsets.only(
                    top: RzTheme.size.smGet,
                    right: 10,
                    bottom: RzTheme.size.smGet,
                    left: 10,
                  ),
                  /*child: Icon(
                    icon,
                    size: 22,
                    color: RzTheme.color.backgroundColor.arcticBlack,
                  ),*/
                  child: menuController.isActive(route)
                      ? Icon(
                          icon,
                          size: 22,
                          color: RzTheme.color.backgroundColor.fullWhite,
                        )
                      : Icon(
                          icon,
                          size: 22,
                          color: menuController.isHovering(route)
                              ? RzTheme.color.backgroundColor.fullWhite
                              : RzTheme.color.backgroundColor.arcticBlack,
                        ),
                ),

                /// Text
                /*Flexible(
                  child: Text(
                    itemName,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: RzTheme.color.textColor.arcticBlack,
                    ),
                  ),
                ),*/
                if (menuController.isHovering(route) ||
                    menuController.isActive(route))
                  Flexible(
                    child: Text(
                      itemName,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: RzTheme.color.textColor.fullWhite,
                      ),
                    ),
                  )
                else
                  Flexible(
                    child: Text(
                      itemName,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: RzTheme.color.textColor.arcticBlack,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
