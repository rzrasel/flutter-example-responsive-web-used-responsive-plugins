import 'package:flutter/material.dart';
import 'package:flutter_rz_responsive_design_implementation/src/route/rz_app_route.dart';
import 'package:flutter_rz_responsive_design_implementation/src/route/rz_app_route_page.dart';
import 'package:get/get.dart';
import 'package:responsive_builder_kit/responsive_builder_kit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.init(
      context: context,
      breakpoints: DeviceBreakpoints(
        desktop: DeviceBreakpointRange(min: 900, max: double.infinity),
        tablet: DeviceBreakpointRange(min: 650, max: 900),
        mobile: DeviceBreakpointRange(min: 250, max: 650),
        watch: DeviceBreakpointRange(min: 0, max: 250),
      ),
    );
    final isDesktop = Responsive.isDesktop(context);
    return GetMaterialApp(
      /*initialBinding: BindingsBuilder(() {
        Get.put(AuthenticationController(), permanent: true);
      }),*/
      debugShowCheckedModeBanner: false,
      title: "Rz Site Template",
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
      themeMode: ThemeMode.light,
      defaultTransition: isDesktop ? Transition.noTransition : Transition.fade,
      transitionDuration: isDesktop
          ? Duration.zero
          : const Duration(milliseconds: 300),
      getPages: RzAppRoutePage.pages,
      initialRoute: RzAppRoute.splash,
      unknownRoute: GetPage(
        name: "/page-not-found",
        page: () => const Scaffold(body: Center(child: Text("Page not found"))),
      ),
    );
  }
}


class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text("Desktop design"),
        ),
      ],
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Center(child: Text("Tablet design"))]);
  }
}

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Center(child: Text("Mobile design"))]);
  }
}