import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/global_data_variables/global_variables.dart';
import 'package:track_on_app_flutter/screens/verifying_OTP/otp_verification.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MobileNumberVerification extends StatefulWidget {
  @override
  _MobileNumberVerificationState createState() =>
      _MobileNumberVerificationState();
}

class _MobileNumberVerificationState extends State<MobileNumberVerification> {
  TextEditingController phoneNumber = new TextEditingController();
  String OTP_response_success;
  static const backgroundColor = const Color(0xffb243441);
  static const textColor = const Color(0xffbD5E0E0);
  static const borderColor = const Color(0xffb707070);
  Future OTPLogin() async {
    var url = 'http://65.1.141.187/api/send-otp/';

    String username_mobile = phoneNumber.text;
    Map<String, dynamic> data = {
      'username': username_mobile,
    };
    var response = await http.post(url,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: data,
        encoding: Encoding.getByName("utf-8"));
// Getting Server response into variable.
    var message = jsonDecode(response.body);
    print("Login checking.... $message");
// If Web call Success than Hide the CircularProgressIndicator.
    if (message["OTP"] == 'Sent') {
      print("success");
      OTP_response_success = "success";
      GlobalData.mobile = phoneNumber.text;
    } else {
      print("Wrong Login");
      OTP_response_success = "failed";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
          color:backgroundColor,
          height: MediaQuery.of(context).size.height,
          child: Column(
              children: [
                Container(
                    height: 300,
                    child: Image.asset("assets/image3.png"),
                    margin: EdgeInsets.only(top: 30)),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "give us your mobile number",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "This will help us to verify your account",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: phoneNumber,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "+91-9999999999",
                              hintStyle: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          //child:Icon(Icons.right)
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "by clicking on continue,you are",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "indicating that you have read and agree",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "to our terms of use & privacy policy",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    )),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: () async {
                    await OTPLogin();
                    if (OTP_response_success == "success") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OTPVerification()));
                    } else {
                      showDialog(
                         context: context,
                          child: new AlertDialog(
                            // title: new Text("My Super title"),
                            content: new Text("Mobile number is incorrect"),
                          ));
                    }
                  },
                  child: Card(
                    color: backgroundColor,
                    shadowColor: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: borderColor),
                        color: backgroundColor,

                      ),
                      margin: EdgeInsets.only(bottom: 50, left: 120, right: 120),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
          ),
        ),
            )));
  }
}
