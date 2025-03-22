import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataText extends StatelessWidget {
  const DataText({
    super.key,
    required this.title,
    required this.data,
  });
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              title,
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.h),
            Text(
              data,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
