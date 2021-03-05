import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/global_data_variables/global_variables.dart';
import 'package:track_on_app_flutter/screens/configuration/configuation.dart';
import 'package:track_on_app_flutter/screens/existing_user_budget/daily_budget/daily_budget.dart';

class UserFingerPrint extends StatefulWidget {
  @override
  _UserFingerPrintState createState() => _UserFingerPrintState();
}

class _UserFingerPrintState extends State<UserFingerPrint> {
  TextEditingController mobile = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  static const backgroundColor = const Color(0xffb243441);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                color: backgroundColor,
                 height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 300,
                        child: Image.asset("assets/image6.png"),
                        margin: EdgeInsets.only(top: 30),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter your mobile no",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Form(
                              key: _formKey,
                              child: TextFormField(
                                  controller: mobile,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      hintText: "+91-9999999999",
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  validator: (value) {
                                    if (value != GlobalData.mobile) {
                                      return "your number hasn't validated yet";
                                    } else if (value.isEmpty) {
                                      return "your value is empty";
                                    }
                                  }),
                            ),
                            SizedBox(height: 50),
                            GestureDetector(
                              onTap: () async {
                                if (_formKey.currentState.validate()) {
                                  // await  showDialog(
                                  //       context: context,
                                  //       barrierDismissible: false,
                                  //       builder: (BuildContext context) =>
                                  //           new CupertinoAlertDialog(
                                  //             title: new Center(
                                  //               child: CircularProgressIndicator(),
                                  //             ),
                                  //           ));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DailyBudget()));
                                } else {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Configuration()));
                                }
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.only(
                                    bottom: 50, left: 120, right: 120),
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.center,
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(height: 10),
                    Center(
                        child: Text(
                      "or",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    Expanded(child: Container()),
                    Container(
                        margin: EdgeInsets.only(bottom: 30),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.asset("assets/fingerprint.png"),
                            Text(
                              "Use your fingerprint to verify",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        )),
                  ],
                )),
          ),
        ));
  }
}
