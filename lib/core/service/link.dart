//بهاد الملف منوصل مع الباك امد صور وملفات وهيك

import 'package:flutter_application_2/core/constant/constant_data.dart';

class Applink {
  static String appRoot = 'https://focal-x.com';
  static String imageWithRootUrl = '$appRoot/storage/';
  static String serverApiRoot = '$appRoot/api';
  static String login = '$serverApiRoot/login';
  static String home = '$serverApiRoot/home';
}

Map<String, String> getHeader() {
  Map<String, String> mainHeader = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-Requested-With': 'XMLHttpRequest',
  };
  return mainHeader;
}

Map<String, String> getHeaderToken() {
  Map<String, String> mainHeader = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-Requested-With': 'XMLHttpRequest',
    'Authorization': 'Bearer ${ConstData.token}',
  };
  return mainHeader;
}

// https://focal-x.com/api/login
