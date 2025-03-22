import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.col,
    required this.title,
    required this.font,
    required this.amg,
    required this.suptitle,
    required this.supfont,
    required this.onTap,
  });
  final Color col;
  final String title;
  final double font;
  final double supfont;
  final VoidCallback onTap;
  final String amg;
  final String suptitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap, // ربط الضغط بالضغط على Card
        child: Container(
          margin: const EdgeInsets.all(8),
          height: 150.h,
          decoration: BoxDecoration(
              color: col, borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                amg,
                height: 50.h,
                width: 50.w,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: font,
                ),
              ),
              SizedBox(
                width: 222.w,
                child: Text(
                  suptitle,
                  style: TextStyle(
                    fontSize: supfont,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
