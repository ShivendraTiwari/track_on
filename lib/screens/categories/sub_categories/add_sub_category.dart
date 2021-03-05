import 'package:flutter/material.dart';

class AddSubCategory extends StatefulWidget {
  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddSubCategory> {
  static const color = const Color(0xffb3C4D5B);
  static const color2 = const Color(0xffbFFFFFF);
  static const color3 = const Color(0xffb4F5D67);

  @override
  Widget build(BuildContext context) {
    TextEditingController name = new TextEditingController();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          child: Column(
              children: [
                Container(height: 120),
                Text(
                  "Add Category",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                    height: 150,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 15,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Card(
                        color: Colors.black,
                        // shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: color3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/food2.png"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Grocery",
                              style: TextStyle(
                                color: Colors.grey.shade200,
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ))),
                SizedBox(height: 50),
                Container(
                    height: 200,
                    width: 180,
                    // decoration:BoxDecoration(
                    //   borderRadius: BorderRadius.circular(30),
                    // ),
                    child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_circle_up,
                              color: Colors.grey,
                              size: 40,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Choose Icon",
                              style: TextStyle(
                                color: Colors.grey.shade200,
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ))),
                SizedBox(height: 20),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: color2),
                          contentPadding: EdgeInsets.all(22))),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: FlatButton(
                      child: Text(
                    "Create",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
          ),
        ),
            )));
  }
}
