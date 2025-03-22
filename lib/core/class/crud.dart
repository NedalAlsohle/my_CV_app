// import 'dart:convert';
// import 'package:dartz/dartz.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_application_2/core/class/check_internet.dart';
// import 'package:flutter_application_2/core/class/status_request.dart';
// import 'package:flutter_application_2/core/service/link.dart';

// //اللفت والرايت هية بحالة النجاح رايت اما حالة الفشل لفت الماب هية الرايت والليفت بترجع القيمة من ستاتوس ريكوست
// class Crud {
//   Future<Either<StatusRequest, Map>> postData(
//       String linkUrl, Map data, Map<String, String> header) async {
//     try {
//       if (await CheckInternet()) {
//         var response = await http.post(Uri.parse(linkUrl),
//             body: jsonEncode(data), headers: header);

//         if (response.statusCode == 200 || response.statusCode == 201) {
//           Map responseBody = jsonDecode(response.body);
//           print(response);
//           print(responseBody);
//           return Right(responseBody);
//         } else {
//           return const Left(StatusRequest.serverFailure);
//         }
//       } else {
//         return const Left(StatusRequest.offlineFailure);
//       }
//     } catch (e) {
//       return const Left(StatusRequest.serverFailure);
//     }
//   }

//   Future<Either<StatusRequest, Map>> getData(
//     String linkUrl,
//     Map data,
//   ) async {
//     try {
//       print('try catch');
//       if (await CheckInternet()) {
//         var response = await http.get(
//           Uri.parse(linkUrl),
//           headers: getHeader(),
//         );

//         print('dodoodoodod');
//         Map<String, dynamic> responseBody = jsonDecode(response.body);

//         print("response.statusCode is ${response.statusCode}");
//         print("response.body is $responseBody");

//         if (response.statusCode == 200 || response.statusCode == 201) {
//           Map responseBody = jsonDecode(response.body);
//           return Right(responseBody);
//         } else {
//           return const Left(StatusRequest.serverFailure);
//         }
//       } else {
//         return const Left(StatusRequest.offlineFailure);
//       }
//     } catch (e) {
//       print(e);
//       return const Left(StatusRequest.serverFailure);
//     }
//   }
// }
