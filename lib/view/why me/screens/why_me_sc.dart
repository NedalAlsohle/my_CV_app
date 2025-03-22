import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/constant/custum_alltext.dart';
import 'package:flutter_application_2/view/why%20me/controllers/why_me_con.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WhyMeSc extends StatelessWidget {
  WhyMeSc({super.key});
  final StepController controller = Get.put(StepController());

  final List<Step> steps = [
    Step(
      title: Text(
        Alltext.Text1,
        style: TextStyle(fontSize: 20.sp),
      ),
      content: Column(
        children: [
          Text(
            Alltext.Text2,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 15.sp),
          ),
          SizedBox(
            height: 30.h,
          )
        ],
      ),
      isActive: true,
    ),
    Step(
      title: Text(
        Alltext.Text3,
        style: TextStyle(fontSize: 20.sp),
      ),
      content: Column(
        children: [
          Text(
            Alltext.Text4,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 15.sp),
          ),
          SizedBox(
            height: 30.h,
          )
        ],
      ),
      isActive: false,
    ),
    Step(
      title: Text(Alltext.Text5, style: TextStyle(fontSize: 20.sp)),
      content: Column(
        children: [
          Text(
            Alltext.Text6,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 15.sp),
          ),
          SizedBox(
            height: 30.h,
          )
        ],
      ),
      isActive: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.darkcolor,
        title: const Text(
          Alltext.Text7,
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
      body: Obx(
        () => Stepper(
          currentStep: controller.currentStep.value,
          steps: steps,
          onStepContinue: () {
            controller.nextStep();
          },
          onStepCancel: () {
            controller.previousStep();
          },
          controlsBuilder: (BuildContext context, ControlsDetails details) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: details.onStepCancel,
                  child: const Text('Back'),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: details.onStepContinue,
                  child: const Text('Next'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
