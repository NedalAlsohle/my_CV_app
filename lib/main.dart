import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  runApp(const MyApp());
  // await initialService();
  // MyService();

  // await Firebase.initializeApp();
  // await initialService();
  // MyService();
  // WidgetsFlutterBinding.ensureInitialized();
  // await FirebaseApi().initNotifications();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // initialBinding: InitalBinding(), //منستدعي ملف الروت اول صفحة لازم تنفتح

        getPages: routes, //منستدعي ملف الروت خريطة التنقلات

        initialRoute: AppRouts.splash,
      ),
    );
  }
}
