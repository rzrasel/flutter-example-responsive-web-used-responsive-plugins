import 'package:flutter/material.dart';
import 'package:flutter_rz_responsive_design_implementation/src/component/app/sidebar/app_sidebar.dart';
import 'package:flutter_rz_responsive_design_implementation/src/component/app/sidebar/model/app_sidebar_item_model.dart';
import 'package:flutter_rz_responsive_design_implementation/src/component/app/topbar/app_topbar.dart';
import 'package:flutter_rz_responsive_design_implementation/src/core/sidebar/sidebar_item.dart';
import 'package:flutter_rz_responsive_design_implementation/src/feature/dashboard/screen/responsive/dashboard_desktop_screen.dart';
import 'package:flutter_rz_responsive_design_implementation/src/feature/dashboard/screen/responsive/dashboard_mobile_screen.dart';
import 'package:flutter_rz_responsive_design_implementation/src/feature/dashboard/screen/responsive/dashboard_tablet_screen.dart';
import 'package:rz_template_set_1/rz_template_set_1.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<AppSidebarItemModel> sidebarItems = <AppSidebarItemModel>[];
    sidebarItems.addAll(SidebarItem.build());

    return RzTemplate(
      sidebar: AppSidebar(sidebarItems: sidebarItems),
      templateModel: RzTemplateModel(
        topbarBuilder: (scaffoldKey) => AppTopbar(scaffoldKey: scaffoldKey),
        sidebar: AppSidebar(sidebarItems: sidebarItems),
        desktop: DashboardDesktopScreen(),
        tablet: DashboardTabletScreen(),
        mobile: DashboardMobileScreen(),
        useLayout: true,
        useScrollView: true,
      ),
    );
  }
}
