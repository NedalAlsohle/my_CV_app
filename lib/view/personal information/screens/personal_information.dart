import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/constant/custum_alltext.dart';
import 'package:flutter_application_2/view/personal%20information/controllers/p_info_con.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonalInfoController controller = Get.put(PersonalInfoController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.darkcolor,
        title: const Text(
          Alltext.Text9,
          style: TextStyle(color: Colors.white),
        ),
        leading: InkWell(
          onTap: Get.back,
          child: const Icon(
            Icons.arrow_back,
            color: AppColor.sidecolor,
            size: 30,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildExpandableItem(0, Alltext.Text10, Alltext.Text11,
              AppColor.graycolor4, controller),
          _buildExpandableItem(1, Alltext.Text12, Alltext.Text13,
              AppColor.graycolor3, controller),
          _buildExpandableItem(2, Alltext.Text14, Alltext.Text15,
              AppColor.graycolor2, controller),
          _buildExpandableItem(3, Alltext.Text16, Alltext.Text17,
              AppColor.graycolor1, controller),
        ],
      ),
    );
  }

  Widget _buildExpandableItem(int index, String title, String data, Color color,
      PersonalInfoController controller) {
    return Obx(() => AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: controller.expanded.value == index ? 340.h : 100.h,
          child: GestureDetector(
            onTap: () => controller.toggleContainer(index),
            child: Container(
              decoration: BoxDecoration(color: color),
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      if (controller.expanded.value == index)
                        Expanded(
                          child: SingleChildScrollView(
                            child: Text(
                              data,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(fontSize: 16.sp),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
