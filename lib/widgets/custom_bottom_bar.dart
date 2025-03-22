// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/core/constant/color.dart';
// import 'package:flutter_application_2/core/constant/routes.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';

// class CustomBottomBar extends StatelessWidget {
//   const CustomBottomBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ConvexAppBar(
//       backgroundColor: AppColor.darkcolor,
//       items: const [
//         TabItem(icon: Icons.add, title: 'Add'),
//         TabItem(icon: Icons.map, title: 'Discovery'),
//         TabItem(icon: Icons.home, title: 'Home'),
//       ],
//       onTap: (int i) {
//         if (i == 0) {
//           Get.toNamed(AppRouts.home);
//         } else if (i == 1) {
//           Get.toNamed(AppRouts.cv); // هنا تعيين المسار الصحيح للزر الثاني
//         } else if (i == 2) {
//           Get.toNamed(AppRouts.home); // هنا تعيين المسار الصحيح للزر الثالث
//         }
//       },
//     );
//   }
// }
