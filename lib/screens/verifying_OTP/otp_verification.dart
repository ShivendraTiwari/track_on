import 'dart:io';

import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/global_data_variables/global_variables.dart';
import 'package:track_on_app_flutter/screens/customer_details/name_email_auth.dart';

import 'otp_verify_api/OTP_Verify.dart';

class OTPVerification extends StatefulWidget {
  @override
  _OtPState createState() => _OtPState();
}

class _OtPState extends State<OTPVerification> {
  TextEditingController otpVerify = new TextEditingController();
  static const backgroundColor = const Color(0xffb243441);
  static const textColor1 = const Color(0xffbF5F5F5);
  static const textColor2 = const Color(0xffb707070);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                color: backgroundColor,
              height:MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Center(
                        child: Container(
                      height: 300,
                      child: Image.asset("assets/image4.png"),
                      margin: EdgeInsets.only(top: 30),
                    )),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Verifying your otp",
                              style: TextStyle(
                                  color: textColor1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "We will send you One Time Password on",
                              style: TextStyle(color: textColor1, fontSize: 15,fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "your  phone number",
                              style: TextStyle(
                                color: textColor1,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              controller: otpVerify,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "0287",
                                  hintStyle: TextStyle(
                                      color: textColor2,
                                      fontWeight: FontWeight.bold,fontSize: 20)),
                            ),
                          ],
                        )),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () async {
                        await OTPVerify.OTPAuth(GlobalData.mobile, otpVerify.text);
                        if (OTPVerify.OTP_fetching ==
                            "successfully OTP submitted") {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => UserAuth()));
                        }
                        else{
                          showDialog(
                              context: context,
                              child: new AlertDialog(
                                // title: new Text("My Super title"),
                                content: new Text("OTP is incorrect.."),
                              ));
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: textColor2),
                          color: backgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(bottom: 50, left: 120, right: 120),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color:textColor1, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}
