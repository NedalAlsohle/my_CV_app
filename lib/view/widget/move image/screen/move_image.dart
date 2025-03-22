import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/constant/custum_alltext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MoveImage extends StatelessWidget {
  const MoveImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.darkcolor,
        title: const Text(
          Alltext.Text50,
          style: TextStyle(color: Colors.white),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColor.sidecolor,
            size: 30,
          ),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Get.to(() => const SecondScreen());
          },
          child: Hero(
            tag: '1',
            child: Image.asset(
              'assets/images/982cc2b0649631816421a3b229b391fe.jpg',
              width: 200.w,
              height: 300.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Center(
          child: Hero(
            tag: '1',
            child: Image.asset(
              'assets/images/982cc2b0649631816421a3b229b391fe.jpg',
              fit: BoxFit.cover,
              width: Get.width,
              height: Get.height,
            ),
          ),
        ),
      ),
    );
  }
}
