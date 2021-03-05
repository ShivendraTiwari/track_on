import 'package:flutter/material.dart';

import 'mobile_or_fingerprint.dart';

class UserAuth extends StatefulWidget {
  @override
  _UserAuthState createState() => _UserAuthState();
}

class _UserAuthState extends State<UserAuth> {
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
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
                  color:backgroundColor,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Image.asset("assets/image5.png"),
                        margin: EdgeInsets.only(top: 30),
                      ),
                      SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tell us your name ",
                                style: TextStyle(
                                    color: textColor1,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "This will be shown in your profile",
                                style:
                                    TextStyle(color: textColor1, fontSize: 15),
                              ),
                              SizedBox(height: 30),
                              TextField(
                                controller: name,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: "Name",
                                    hintStyle: TextStyle(
                                        color: textColor2,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              SizedBox(height: 50),
                              Text(
                                "Would you like to tell us your ",
                                style: TextStyle(
                                    color: textColor1,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "email id?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox  (height: 5),
                              Text(
                                "This will help us to communicate with you",
                                style:
                                    TextStyle(color: textColor1, fontSize: 15),
                              ),
                              SizedBox(height: 30),
                              TextField(
                                controller: email,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: "abc@gmail.com",
                                    fillColor: Colors.white,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                            ],
                          )),
                      Expanded(child: Container()),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserFingerPrint()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.grey.shade700),
                            color: backgroundColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          margin:
                              EdgeInsets.only(bottom: 50, left: 120, right: 120),
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
                    ],
                  )),
            )));
  }
}
