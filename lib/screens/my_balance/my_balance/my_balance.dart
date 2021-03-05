import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_on_app_flutter/screens/recipe_category/category/recipe_category.dart';
import 'package:track_on_app_flutter/screens/task/task__calendar/task_calendar.dart';
import 'package:track_on_app_flutter/screens/transaction/my_transaction/my_transaction.dart';

import 'my_balance_frequent_transaction.dart';

class MyBalance extends StatefulWidget {
  @override
  _MyBalanceState createState() => _MyBalanceState();
}

class _MyBalanceState extends State<MyBalance> {
  static const color = const Color(0xffb23323F);
  static const borderColor = const Color(0xffb233340);
  static const borderColor2 = const Color(0xffb517C95);
  static const boxColor = const Color(0xffb52687A);
  static const boxBorderColor = const Color(0xffb707070);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: color,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: color, border: Border.all(color: color)),
                          child: Card(
                            elevation: 5,
                            color: color,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) => DailyBudget()));
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 50,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border:
                                                Border.all(color: Colors.white),
                                          ),
                                          child: Text(
                                            "Daily",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      InkWell(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) => WeeklyBudget()));
                                        },
                                        child: Text(
                                          "Weekly",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      InkWell(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) => MonthlyBudget()));
                                        },
                                        child: Text(
                                          "Monthly",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Card(
                                        elevation: 5,
                                        color: borderColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side:
                                                BorderSide(color: borderColor)),
                                        child: Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: borderColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: borderColor),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                // SizedBox(width: 2),
                                                Text("January Budget",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 8)),
                                                Icon(Icons.arrow_drop_down,
                                                    color: Colors.white)
                                              ],
                                            )),
                                      ),
                                      SizedBox(width: 5),
                                      Flexible(child: CircleAvatar()),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "My Balance",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Image.asset("assets/rupee_icon.png",
                                          color: Colors.white),
                                      Text(
                                        "490",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(height: 20),
                      Text("Frequent Transaction",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 20),
                      Container(
                          // height:MediaQuery.of(context).size.height,
                          height: 250,
                          child: MyBalanceTransaction()),
                      SizedBox(height: 35),
                      Text("Up Coming Reminders",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                      SizedBox(height: 70),
                      Container(
                          height: 400,
                          margin:EdgeInsets.symmetric(horizontal: 20),
                          child: GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: 1.4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 15,
                            children: <Widget>[
                              Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: borderColor2),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 1),

                                        )
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Pet",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,fontSize: 13)),
                                                Text("Dewarming",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,fontSize: 13)),
                                              ],
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                                color: boxColor,
                                                width: 20,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text("1",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            SizedBox(width: 2),
                                            Container(
                                                color: boxColor,
                                                width: 20,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text("2",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: boxColor,
                                                child: Image.asset(
                                                    "assets/bell.png")),
                                            SizedBox(width: 10),
                                            Column(
                                              children: [
                                                Text(
                                                  "Days Remaining ",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        "assets/snooze.png"),
                                                    Text("Snooze On",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400))
                                                  ],
                                                )
                                              ],
                                            )
                                          ]),
                                    ],
                                  )),
                              Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: borderColor2),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 0.1),
                                        )
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Deep Cleaning",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,fontSize: 13)),
                                                Text("Master BedRoom",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,fontSize: 13)),
                                              ],
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                                color: boxColor,
                                                width: 20,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text("1",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            SizedBox(width: 2),
                                            Container(
                                                color: boxColor,
                                                width: 20,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text("2",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: boxColor,
                                                child: Image.asset(
                                                    "assets/bell.png")),
                                            SizedBox(width: 10),
                                            Column(
                                              children: [
                                                Text(
                                                  "Days Remaining ",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        "assets/snooze.png"),
                                                    Text("Snooze On",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400))
                                                  ],
                                                )
                                              ],
                                            )
                                          ]),
                                    ],
                                  )),
                              Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: borderColor2),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 0.1),
                                        )
                                      ]),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text("Pay",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,fontSize: 13)),
                                                Text("Electricity Bill",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,fontSize: 13)),
                                              ],
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                                color: boxColor,
                                                width: 20,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text("1",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold))),
                                            SizedBox(width: 2),
                                            Container(
                                                color: boxColor,
                                                width: 20,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text("2",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold))),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: boxColor,
                                                child:
                                                Image.asset("assets/bell.png")),
                                            SizedBox(width: 10),
                                            Column(
                                              children: [
                                                Text(
                                                  "Days Remaining ",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        "assets/snooze.png"),
                                                    Text("Snooze On",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                            FontWeight.w400))
                                                  ],
                                                )
                                              ],
                                            )
                                          ]),
                                    ],
                                  )),
                              Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: borderColor2),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 0.1),
                                        )
                                      ]),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text("Get Car Service",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,fontSize: 13)),
                                              ],
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                                color: boxColor,
                                                width: 20,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text("1",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold))),
                                            SizedBox(width: 2),
                                            Container(
                                                color: boxColor,
                                                width: 20,
                                                height: 30,
                                                alignment: Alignment.center,
                                                child: Text("2",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold))),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: boxColor,
                                                child:
                                                Image.asset("assets/bell.png")),
                                            SizedBox(width: 10),
                                            Column(
                                              children: [
                                                Text(
                                                  "Days Remaining ",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        "assets/snooze.png"),
                                                    Text("Snooze On",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                            FontWeight.w400))
                                                  ],
                                                )
                                              ],
                                            )
                                          ]),
                                    ],
                                  )),
                            ],
                          )),
                      Card(
                        elevation: 5,
                        shadowColor: Colors.white,
                        margin: EdgeInsets.only(left: 70, right: 70, bottom: 30),
                        color: color,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.grey)),
                        child: Container(
                          height: 65,
                          decoration: BoxDecoration(),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/home.png"),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyTransaction()));
                                  },
                                  child: Image.asset("assets/transaction_icon.png"),
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TaskCalendar()));
                                    },
                                    child: Image.asset("assets/list.png")),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => RecipeCategory()));
                                    },
                                    child: Image.asset("assets/food.png")),
                              ]),
                        ),
                      )

                    ],
                  ),
                ))));
  }

  _MyBalanceState();
}
