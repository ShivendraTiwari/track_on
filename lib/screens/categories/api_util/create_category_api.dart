// import 'package:http/http.dart' as http;
// import 'dart:convert';
// class CreateCategory {
//   //static String OTP_fetching;
//
//   static Future createCategory(mobile, otpVerify) async {
//     var url = 'http://65.1.141.187/api/login/';
//     String username_mobile = mobile;
//     String fetched_OTP = otpVerify;
//     Map<String, dynamic> data = {
//       'username': username_mobile,
//       'password': fetched_OTP,
//     };
//     print(data);
//     var response = await http.post(url,
//         headers: {
//           "Accept": "application/json",
//           "Content-Type": "application/x-www-form-urlencoded"
//         },
//         body: data,
//         encoding: Encoding.getByName("utf-8"));
// // Getting Server response into variable.
//     var message = jsonDecode(response.body);
//     print("OTP fetching.... $message");
// // If Web call Success than Hide the CircularProgressIndicator.
//     if (message["New User"] == false) {
//       print("successfully OTP submitted");
//       OTP_fetching = "successfully OTP submitted";
//       GlobalData.token = message['key'];
//     } else {
//       print("Wrong OTP entered");
//     }
//   }
// }