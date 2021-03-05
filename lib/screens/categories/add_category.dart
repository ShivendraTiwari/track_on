import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  static const color = const Color(0xffb3C4D5B);
  static const color2 = const Color(0xffbFFFFFF);

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
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 100,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          "Income",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        )),
                    Container(
                        height: 100,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          "Expense",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        )),
                  ],
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: GridView.builder(
                            itemCount: 1,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return
                                  //InkWell(
                                  // onTap: () {
                                  //   Navigator.push(
                                  //       context,
                                  //       MaterialPageRoute(
                                  //           builder: (context) => SubCategories()));
                                  // },
                                  Card(
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                margin:
                                    EdgeInsets.only(left: 20, right: 20, top: 20),
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black,
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
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.add, color: Colors.white),
                                        // Text(
                                        //   "Kitchen Staff",
                                        //   textAlign: TextAlign.center,
                                        //   style: TextStyle(
                                        //       color: Colors.white,
                                        //       fontSize: 13,
                                        //       fontWeight: FontWeight.w400),
                                        // ),
                                        //Image.asset("assets/food2.png"),
                                      ],
                                    )),
                              );
                              //  );
                            }),
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
              ],
          ),
        ),
            )));
  }
}
