import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:track_on_app_flutter/global_data_variables/global_variables.dart';

class CreateBudgetUtil {
  static String budget_create;

  static Future createBudget(search) async {
    var url = 'http://65.1.141.187/api/budget/';
    String title = search;

    Map<String, String> data = {
      'title': title,
    };
    print(data);
    var response = await http.post(url,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded",
          "Authorization": "Token ${GlobalData.token}",
        },
        body: data,
        encoding: Encoding.getByName("utf-8"));
// Getting Server response into variable.
    var message = jsonDecode(response.body);
    print("OTP fetching.... $message");
// If Web call Success than Hide the CircularProgressIndicator.
    if (message["New User"] == false) {
      print("successfully OTP submitted");
      // OTP_fetching = "successfully OTP submitted";
    } else {
      print("Wrong OTP entered");
    }
  }
}
