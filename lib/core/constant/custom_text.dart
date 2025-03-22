import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextDecoration? decoration;
  final TextAlign textAlign; // Change to TextAlign
  final String fontFamily;
  final AlignmentGeometry alignment;
  final TextOverflow textOverflow;

  const CustomText({
    super.key,
    this.text = '',
    this.fontSize = 18,
    this.color,
    this.fontWeight = FontWeight.w500,
    this.decoration,
    this.textAlign = TextAlign.start, // Default value
    this.fontFamily = 'NeoSansArabic', // Replace with the correct font name
    this.alignment = Alignment.centerRight,
    this.textOverflow = TextOverflow.ellipsis,
    required TextDirection textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        textAlign: textAlign,
        overflow: textOverflow,
        style: TextStyle(
          decoration: decoration,
          height: 1.3,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          color: color,
        ),
      ),
    );
  }
}
