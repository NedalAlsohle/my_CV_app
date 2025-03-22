import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRouts.home);
    });
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          radius: 1,
          colors: [AppColor.sidecolor2, AppColor.sidecolor],
        ),
      ),
      child: Center(
        child: Lottie.asset("assets/animations/cv.json"),
      ),
    );
  }
}
