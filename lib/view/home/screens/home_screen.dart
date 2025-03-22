import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/constant/custum_alltext.dart';
import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:flutter_application_2/widgets/costum_drawer.dart';
import 'package:flutter_application_2/widgets/custom_card.dart';
import 'package:flutter_application_2/widgets/home_avatar_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.darkcolor,
        title: const Text(
          Alltext.Text18,
          style: TextStyle(color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: AppColor.sidecolor,
                size: 30,
              ),
            );
          },
        ),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CustomCard(
                    col: AppColor.athercolor1,
                    title: Alltext.Text19,
                    font: 16.sp,
                    amg: 'assets/images/G.png',
                    suptitle: Alltext.Text20,
                    supfont: 12.sp,
                    onTap: () {
                      Get.toNamed(AppRouts.educational);
                    },
                  ),
                  CustomCard(
                    col: AppColor.athercolor2,
                    title: Alltext.Text21,
                    font: 16.sp,
                    amg: 'assets/images/certificate.png',
                    suptitle: Alltext.Text22,
                    supfont: 12.sp,
                    onTap: () {
                      Get.toNamed(AppRouts.certificatescourses);
                    },
                  )
                ],
              ),
              Row(
                children: [
                  CustomCard(
                    col: AppColor.athercolor3,
                    title: Alltext.Text23,
                    font: 16.sp,
                    amg: 'assets/images/user.png',
                    suptitle: Alltext.Text24,
                    supfont: 12.sp,
                    onTap: () {
                      Get.toNamed(AppRouts.personalInformation);
                    },
                  ),
                  CustomCard(
                    col: AppColor.athercolor4,
                    title: Alltext.Text25,
                    font: 16.sp,
                    amg: 'assets/images/experience.png',
                    suptitle: Alltext.Text26,
                    supfont: 12.sp,
                    onTap: () {
                      Get.toNamed(AppRouts.experiences);
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CustomCard(
                    col: AppColor.sidecolor,
                    title: Alltext.Text27,
                    font: 16.sp,
                    amg: 'assets/images/problem.png',
                    suptitle: Alltext.Text28,
                    supfont: 12.sp,
                    onTap: () {
                      Get.toNamed(AppRouts.whyme);
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      "My fav widgets...",
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.sp),
                    ),
                  ),
                ],
              ),
              const HomeAvatarSection(),
            ],
          ),
        ),
      ),
    );
  }
}
