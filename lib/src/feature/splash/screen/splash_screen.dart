import 'package:flutter/material.dart';
import 'package:flutter_rz_responsive_design_implementation/src/feature/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Rz Rasel",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}