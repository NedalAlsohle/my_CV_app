import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class ColorChangingContainer extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

   ColorChangingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final randomIndex = Random().nextInt(Colors.primaries.length);
        final selectedColor = Colors.primaries[randomIndex].shade500;
        controller.changeColor(selectedColor);
      },
      child: Obx(
        () => Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            color: controller.containerColor.value,
          ),
          child: const Center(
            child: Text(
              'اضغط هنا',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
