import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // غيّر النوع إلى Color مع قيمة ابتدائية من MaterialColor
  var containerColor = (Colors.blue as Color).obs;

  // دالة لتغيير اللون
  void changeColor(Color newColor) {
    containerColor.value = newColor;
  }
}
