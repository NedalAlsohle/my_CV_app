import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustumAvatar extends StatelessWidget {
  const CustumAvatar({super.key, required this.icon1, required this.onTap});
  final IconData icon1;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: onTap,
        child: CircleAvatar(
          radius: 40.r,
          child: Center(
            child: Icon(
              icon1,
              size: 40.sp,
              color: AppColor.darkcolor,
            ),
          ),
        ),
      ),
    );
  }
}
