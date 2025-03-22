import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/home/controllers/home_controller.dart';
import 'package:flutter_application_2/widgets/color_changing_container.dart';
import 'package:get/get.dart';

class RandomColoc extends StatelessWidget {
  const RandomColoc({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Scaffold(
      body: ColorChangingContainer(),
    );
  }
}
