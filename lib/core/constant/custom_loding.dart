// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/core/constant/color.dart';

// class LoadingManager extends StatelessWidget {
//   final bool isLoading;
//   final Widget child;

//   const LoadingManager({
//     Key? key,
//     required this.isLoading,
//     required this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (isLoading) return child;
//     return Center(
//       child: Container(
//         // height: double.maxFinite,
//         // width: double.maxFinite,
//         height: 40,
//         width: 40,
//         alignment: Alignment.center,
//         child: SafeArea(
//           child: CupertinoActivityIndicator(
//             radius: 30,
//             color: AppColor.appBlueColor,
//           ),
//         ), // CupertinoActivityIndicator
//       ), // SafeArea, Container
//     ); // Center
//   }
// }
