// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/core/constant/color.dart';

// class CustomElevatedButton extends StatelessWidget {
//   CustomElevatedButton({
//     Key? key,
//     this.buttonColor = AppColor.appBlueColor,
//     this.textColor = Colors.white,
//     required this.text,
//     required this.isChildRow,
//     required this.onPressed,
//     this.iconData,
//     this.padding = 10,
//     this.borderColor = AppColor.appBlueColor,
//   }) : super(key: key);

//   final Color buttonColor;
//   final Color textColor;
//   final String text;
//   final bool isChildRow;
//   final void Function() onPressed;
//   final IconData? iconData; // يجب أن تكون نهائية إذا لم تتغير
//   final double padding;
//   final Color borderColor;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: buttonColor,
//         padding: EdgeInsets.all(padding),
//         side: BorderSide(color: borderColor),
//       ),
//       onPressed: onPressed,
//       child: Row(
//         mainAxisAlignment: isChildRow ? MainAxisAlignment.start : MainAxisAlignment.center,
//         children: [
//           if (iconData != null) Icon(iconData, color: textColor),
//           Text(
//             text,
//             style: TextStyle(color: textColor),
//           ),
//         ],
//       ),
//     );
//   }
// }
