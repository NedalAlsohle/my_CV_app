// import 'package:get/get.dart';
// import 'package:shared_preferences_android/shared_preferences_android.dart';

// //هي مكتبة الشير بريفرنس
// class MyService extends GetxService {
//   late SharedPreferences sharedPreferences;

//   Future<MyService> init() async {



//     //هدول الن علاقة بالاشعارات والفير بيز
//     final _firebaseMessaging = FirebaseMessaging.instance;
//     await _firebaseMessaging.requestPermission();
//     final fcmToken = await _firebaseMessaging.getToken();
//     print('fcmToken: $fcmToken');


//     sharedPreferences = await SharedPreferences.getInstance();
//     return this;
//   }


//   initPlatformState() async {  
//     String appBadgeSupported;  
//     try {  
//         bool res = await FlutterAppBadger.isAppBadgeSupported();  
//         if (res) {  
//             appBadgeSupported = 'Supported';  
//         } else {  
//             appBadgeSupported = 'Not supported';  
//         }  
//     } on PlatformException {  
//         appBadgeSupported = 'Failed to get badge support.';  
//     }  

//     // If the widget was removed from the tree while the asynchronous  
//     // message was in flight, want to discard the reply rather than   
//     // call setState to update our non-existent appearance.  
//     if (!mounted) return;  

//         appBadgeSupported = appBadgeSupported;  
// }
// }

// initialService() async {
//   await Get.putAsync(() => MyService().init());
// }
