import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/constant/custum_alltext.dart';
import 'package:flutter_application_2/widgets/custom_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EducationalLevel extends StatelessWidget {
  const EducationalLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.darkcolor,
        title: const Text(
          Alltext.Text32,
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
      body: Row(
        children: [
          CustomCard(
            col: AppColor.athercolor2,
            title: Alltext.Text33,
            font: 23.sp,
            amg: 'assets/images/G.png',
            suptitle: Alltext.Text34,
            onTap: () {},
            supfont: 15.sp,
          ),
        ],
      ),
    );
  }
}
