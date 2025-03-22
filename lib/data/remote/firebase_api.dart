// // هون عالاغلب منحط كود الاشعارات من فايار بيز
// //ما تنسا تستدعي مكتبة فير بيز مسجنغ وفاير بيز كور وحطن بالياميل

// //في مشكلة بالباكيج بحلا بعدين

// /*الاشعارات بيطلع عدد برا على ايقونه التطبيق
// هذا العدد بنجيبه من اللسته يلي بيعطينا اياها الباك اند
// عدد الاشعارات هو عرض اللسته */
// 
// //ممكن نستغني عن هي المكتبة ونحط بقسم الويدجيت والهوم ستاك مدور بيعرض عرض اللست من الباك اند وبس بكل بساطة بدوووون مكتبة 
// class FirebaseApi {
//   final _firebaseMessaging = FirebaseMessaging.instance;

//   Future<void> handleBackgroundMessage(RemoteMessage message) async {
//     String title = message.notification?.title ?? "No Title";
//     print('Title: $title');
//     print('Body: ${message.notification?.body}');
//     print('Data: ${message.data}');
//     }

//     Future<void> initNotifications() async {
//       await _firebaseMessaging.requestPermission();
//       final fcmToken = await _firebaseMessaging.getToken();

//       print('fcmToken==$fcmToken');

//       FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
//   }
// }
