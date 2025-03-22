import 'dart:io';

//هاد الملف بيتحقق ازا في انترنت
// ignore: non_constant_identifier_names
CheckInternet() async {
  try {
    var result = await InternetAddress.lookup(
        'google.com'); //هاد موقع اختياري بتجرب النت
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      //اذا تمام الاختبار طبعلي تمام
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}
